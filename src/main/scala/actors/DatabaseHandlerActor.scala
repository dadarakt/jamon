package actors

/**
 * Created by jannis on 4/25/14.
 */

import akka.actor.{Props, Actor}
import akka.util._
import akka.io.Tcp.{ConfirmedClosed, Aborted, PeerClosed}

import spray.can.Http
import spray.http._
import spray.http.HttpMethods._
import spray.http.MediaTypes._
import spray.can.server.Stats

import scala.concurrent.duration._
import grizzled.slf4j.Logging

/**
 * A trait which is to be mixed into all actors that serve the http server for handling messages.
 * Implements all the common behavior which is necessary for this type of actor to work in the system.
 */
trait HandlerActor
  extends Actor
  with Logging {

  import context.dispatcher
  implicit val timeout: Timeout = 3.seconds
  implicit val system           = context.system

  // This has to be implemented by actors which mix in this trait
  def customReceive: Receive

  // The actual receive function will first check the cases defined by the classes which mix in the trait and otherwise
  // fall back to the ones defined above
  def receive: Receive = customReceive orElse defaultReceive

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

    // the 'index' page
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

    case r @ HttpRequest(GET, Uri.Path("/longRequest"),_,_,_) =>
      Thread.sleep(30000)
      sender() ! HttpResponse(entity = HttpEntity(`text/html`,
        <html>
          <body>
            <h1> Thanks for waiting 10 seconds </h1>
          </body>
        </html>.toString
      ))

    //see some simple stats
    case HttpRequest(GET, Uri.Path("/server-stats"), _, _, _) =>
      import akka.pattern.ask
      val client = sender
      context.actorSelection("/user/IO-HTTP/listener-0") ? Http.GetStats onSuccess {
        case s: Stats => client ! HttpResponse(
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
          ))
      }

    // TODO this is only to facilitate testing, should NEVER be in the code later
    case HttpRequest(GET, Uri.Path("/stopHammerTime"), _, _, _) =>
      sender ! HttpResponse(entity = "Shutting down in 1 second ...")
      sender ! Http.Close
      context.system.scheduler.scheduleOnce(1.second) { context.system.shutdown() }

    // The general fallback - 404
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
}

/**
 * This actor comes into play when the backend to the service is unreachable for any reason.
 * It is the null-handler which just returns a static error code.
 */
class DbDownHandlerActor
    extends Actor
    with HandlerActor
    with Logging {

  import DbDownHandlerActor._

  def customReceive: Receive = {
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



