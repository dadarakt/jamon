package actors

/**
 * Created by jannis on 4/25/14.
 */

import akka.actor.{Terminated, Props, Actor}
import akka.actor.ActorRef
import akka.util._
import spray.can.Http
import spray.http._
import spray.http.HttpMethods._
import spray.http.MediaTypes._
import spray.http.HttpRequest
import spray.http.HttpResponse
import akka.io.Tcp.{ConfirmedClosed, Aborted, PeerClosed}
import scala.concurrent.duration._
import grizzled.slf4j.Logging
import spray.can.server.Stats
import actors.HttpServerActor.ChangeHandler
import akka.io.IO
import com.thinkaurelius.titan.core.TitanGraph

/**
 * Listenes on the port for connections and dispatches them to the handling actors.
 * For now there will be an actor spawned for every new connection but it is also possible to
 * have a pool of actors for that, to limit load and evoke back-pressure.
 * It tracks the actors which handle connections in order to kill all connections when the behavior changes.
 * This might not be optimal in all cases but for now the behavior should only change when there are drastical
 * changes somewhere else wich render all open connections useless anyways.
 * @param handlerProps The type of handler which handles the incoming connection.
 */
class ListenerActor(handlerProps: Props)
  extends Actor
  with Logging {

  import scala.collection.mutable

  // make this variable for possible later changes
  var _handleProps = handlerProps

  // Holds all open Connections
  var openConnections: mutable.LinkedHashSet[ActorRef] = mutable.LinkedHashSet[ActorRef]()

  def receive: Receive = {
    case c: Http.Connected =>
      val _sender = sender()
      // Create a new handler, put deathwatch on it and register the connection     
      val handler = context.actorOf(_handleProps)
      context.watch(handler) 
      openConnections += handler
      debug(s"Incoming connection from: ${c.remoteAddress}")
      info(s"------>Currently openend connections: ${openConnections.size }")
      _sender ! Http.Register(handler)

    case ChangeHandler(newHandler) =>
      info(s"The listener changed behavior to ${newHandler}")
      context.children.foreach(context.stop(_))
      _handleProps = newHandler

    case Terminated(handler) =>
      info(s"There was an actor being killed. $handler") //TODO this should be expected behavior later
      if(openConnections.contains(handler)){
        openConnections -= handler
      } else {
        error(s"There was a handler which was never created: $handler")
      }
  }
}

object ListenerActor {
  def props(handlerProps: Props) = Props(new ListenerActor(handlerProps))
}


/**
 * A trait which is to be mixed into all actors that serve the http server for handling messages.
 * Implements all the common behavior which is necessary for this type of actor to work in the system.
 */
trait HandlerActor
  extends Actor
  with Logging {
  implicit val timeout: Timeout = 3.seconds
  implicit val system           = context.system

  // This has to be implemented by actors which mix in this trait
  def customReceive: Receive

  // Contains some common cases which every actor of this type should have. They are at least priority, meaning they
  // represent a comfortable fallback if an implementing class does not want to handle certain messages.
  def defaultReceive: Receive = {

    // This will stop the actor once the connection breaks. Works only as long every connection has its own worker
    case PeerClosed =>
      context.stop(self)

    case Aborted =>
      context.stop(self)

    case ConfirmedClosed =>
      context.stop(self)

    case r @ HttpRequest(GET, uri, header, entity, protocol) =>
      // Unpack the headers for display (make a html list)
      val headers = header.map((h: HttpHeader) => s"<li>${h.name} -----> ${h.value}</li>").mkString("\n")
        val enty = s"""<html>
                      |          <head>
                      |            <title> 404 - Resource not found.</title>
                      |          </head>
                      |          <body>
                      |            <h1> 404 - Invalid Request!</h1>
                      |            <h2> Here is your query: </h2>
                      |            <ul>
                      |              <li>GET Request to the address: $uri</li>
                      |              <li>headers:
                      |                <ul>
                      |                  $headers
                      |                </ul>
                      |              </li>
                      |              <li>The entity in the request: $entity</li>
                      |              <li>The protocol used: $protocol</li>
                      |            </ul>
                      |            <img src = "http://i.imgur.com/728GirQ.jpg"
                      |                 alt="WatDatDenn?"
                      |                 title ="Nosey Fucker!"
                      |                 width="200"
                      |                 height="200"
                      |                 align="right"/>
                      |
                      |          </body>
                      |        </html>""".stripMargin
      sender() ! HttpResponse(status = 404, entity = HttpEntity(`text/html`, enty))
  }

  // The actual receive function will first check the cases defined by the classes which mix in the trait and otherwise
  // fall back to the ones defined above
  def receive: Receive = customReceive orElse defaultReceive
}


/**
 * First prototype of an actor that can take HttpReqeuests does some things (nothing too useful)
 */
class PlayfulHandlerActor
    extends Actor
    with Logging
    with HandlerActor {

  import context.dispatcher

  def customReceive = {
    // Some special cases
    case  r @ HttpRequest(GET, Uri.Path("/"),_,_,_) =>
      sender() ! HttpResponse(entity = HttpEntity(`text/html`,
        <html>
          <body>
            <h1>Coming up: Julia-Database</h1>
            <h2>Work is in progress, nothing to see here yet.</h2>
            <p>Some time in the future you can make requests to this page in order to get julia-code.
              Check out this link for reference:</p>
            <a href="https://github.com/dadarakt/jamon">The project on github.</a>
          </body>
        </html>.toString
      ))

    case r @ HttpRequest(GET, Uri.Path("/verena"),_,_,_) =>
      sender() ! HttpResponse(entity = "Haaaaaalllo Vreeeniii <3 <3 <3")

    case r @ HttpRequest(GET, Uri.Path("/simon"), _,_,_) =>
      sender() ! HttpResponse(entity = HttpEntity(`text/html`,
        <html>
          <body>
            <h1> For the lulz </h1>
            <img src = "http://i.imgur.com/728GirQ.jpg" alt="WatDatDenn?" title ="Nosey Fucker!"/>
          </body>
        </html>.toString
      ))


    case r @ HttpRequest(GET, Uri.Path("/longRequest"),_,_,_) =>
      Thread.sleep(30000)
      sender() ! HttpResponse(entity = HttpEntity(`text/html`,
        <html>
          <body>
            <h1> Thanks for waiting 10 seconds </h1>
          </body>
        </html>.toString
      ))

    //Ripped from the spray example to see some simple stats
    case HttpRequest(GET, Uri.Path("/server-stats"), _, _, _) =>
      import akka.pattern.ask
      val client = sender
      context.actorSelection("/user/IO-HTTP/listener-0") ? Http.GetStats onSuccess {
        case x: Stats => client ! statsPresentation(x)
      }

    // TODO this is only to facilitate testing, should NEVER be in the code later
    case HttpRequest(GET, Uri.Path("/stopHammerTime"), _, _, _) =>
      sender ! HttpResponse(entity = "Shutting down in 1 second ...")
      sender ! Http.Close
      context.system.scheduler.scheduleOnce(1.second) { context.system.shutdown() }
  }


  def statsPresentation(s: Stats) = HttpResponse(
    entity = HttpEntity(`text/html`,
      <html>
        <body>
          <h1>HttpServer Stats</h1>
          <table>
            <tr><td>uptime:</td><td>{s.uptime.toMinutes}</td></tr>
            <tr><td>totalRequests:</td><td>{s.totalRequests}</td></tr>
            <tr><td>openRequests:</td><td>{s.openRequests}</td></tr>
            <tr><td>maxOpenRequests:</td><td>{s.maxOpenRequests}</td></tr>
            <tr><td>totalConnections:</td><td>{s.totalConnections}</td></tr>
            <tr><td>openConnections:</td><td>{s.openConnections}</td></tr>
            <tr><td>maxOpenConnections:</td><td>{s.maxOpenConnections}</td></tr>
            <tr><td>requestTimeouts:</td><td>{s.requestTimeouts}</td></tr>
          </table>
        </body>
      </html>.toString()
    )
  )
}

object PlayfulHandlerActor {
  def props: Props = Props(new PlayfulHandlerActor)
}


/**
 * This actor comes into play when the backend to the service is unreachable for any reason.
 * It is the null-handler which just returns a static error code.
 *
 */
class DbDownHandlerActor
    extends Actor
    with HandlerActor
    with Logging {

  import DbDownHandlerActor._
  import context.dispatcher

  def customReceive: Receive = {

    // TODO this is only to facilitate testing, should NEVER be in the code later
    case HttpRequest(GET, Uri.Path("/stopHammerTime"), _, _, _) =>
      sender ! HttpResponse(entity = "Shutting down in 1 second ...")
      sender ! Http.Close
      context.system.scheduler.scheduleOnce(1.second) { context.system.shutdown() }

    // Just add a catch-all for all kinds of GETS and POSTS to display error
    case HttpRequest(GET,_,_,_,_) =>
      sender() ! displayDbOffline
    case HttpRequest(POST,_,_,_,_) =>
      sender() ! displayDbOffline
  }
}


object DbDownHandlerActor {
  def props = Props(new DbDownHandlerActor)

  def displayDbOffline : HttpResponse = {
    HttpResponse(status = 500, entity = HttpEntity(`text/html`,
      <html>
        <body>
          <h1> The database is currently down. Please try again later.</h1>
          <img src = "http://i.imgur.com/728GirQ.jpg"
                     alt="WatDatDenn?"
                     title ="Nosey Fucker!"
                     width="200"
                     height="200"
                     align="right"/>
        </body>
      </html>.toString
    ))
  }
}

/**
 * First prototype for a handler which takes incoming requests and tries to interact with the Titan-Database.
 * @param graph The (Titan) graph-database
 */
class TitanDbHandlerActor(graph: TitanGraph)
  extends Actor
  with    DbHandlerActor
  with    Logging {


  import database.TitanDatabaseConnection.graphToString

  def dbDependendReceive = {
    case HttpRequest(GET, Uri.Path("/dbRequest"),_,_,_) =>
      info("Somebody wants something from the database!")
      val start = System.currentTimeMillis()
      sender() ! HttpResponse(entity = graphToString(graph))
      info(s"Work on this request took: ${System.currentTimeMillis - start} ms.")
  }

}

object TitanDbHandlerActor {
  def props(graph: TitanGraph): Props = Props(new TitanDbHandlerActor(graph))

}


/**
 * Defines a set of possible interactions with the database. Implementing classes can then be interchanged to swap
 * the logics of interaction and also the implementation underneath. This level of abstraction is introduced in order
 * to allow the backend to be interchangeable from what the http-server does. Could also be used as a simple marker
 * interface.
 */
trait DbHandlerActor extends HandlerActor{

  def dbDependendReceive: Receive

  // All general behavior of an data-base
  def dbGeneralReceive: Receive = {
    case HttpRequest(GET, Uri.Path("/canHasGraph"),_,_,_) =>
      sender() ! HttpResponse(entity = "Of course you could. IF I HAD ANY!!")
  }

  def customReceive = dbDependendReceive orElse dbGeneralReceive
}



