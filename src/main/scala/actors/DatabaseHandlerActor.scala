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
import database.{TitanDatabaseConnection, TitanDbInteractions}
import scala.io.Source
import java.io.FileNotFoundException

/**
 * A trait which is to be mixed into all actors that serve the http server for handling incoming requests.
 * Implements all the common behavior which is necessary for an actor to handle requests. These are mostly fall-back
 * responses.
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

  // This is a prototype for a function which returns a page to show to the user
  def getPage(name: String) = {
    try{
      Source.fromFile(s"src/main/resources/sites/$name.html").getLines.mkString("")
    } catch {
     case ex: FileNotFoundException => "This page does not exist"
    }
  }

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
        getPage("index")
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
                  <tr><td>uptime:</td>            <td>{s.uptime.toMinutes}</td></tr>
                  <tr><td>totalRequests:</td>     <td>{s.totalRequests}</td></tr>
                  <tr><td>openRequests:</td>      <td>{s.openRequests}</td></tr>
                  <tr><td>maxOpenRequests:</td>   <td>{s.maxOpenRequests}</td></tr>
                  <tr><td>totalConnections:</td>  <td>{s.totalConnections}</td></tr>
                  <tr><td>openConnections:</td>   <td>{s.openConnections}</td></tr>
                  <tr><td>maxOpenConnections:</td><td>{s.maxOpenConnections}</td></tr>
                  <tr><td>requestTimeouts:</td>   <td>{s.requestTimeouts}</td></tr>
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

    // The general fallback for invalid requests - 404 TODO this returns the http request for debugging, should be simplified later
    case r @ HttpRequest(GET, uri, header, entity, protocol) =>
      // Unpack the headers for display (make a html list)
      val headers = header.map((h: HttpHeader) => s"<li>${h.name} -----> ${h.value}</li>").mkString("\n")
        val enty = s"""<html>
                      |          <head>
                      |            <title> 404 - Resource not found. Check your query, please.</title>
                                    <style>
                                      body {
                                          background-image: url('http://www.likeplusone.org/feelsbadman.png');
                                          background-repeat: repeat;
                                          background-size: 80px 80px;
                                      }
                                      h1 {
                                        background-color:#fff;
                                      }
                                      h2 {
                                        background-color:#fff;
                                      }
                                      ul {
                                        background-color:#fff;
                                      }
                                    </style>
                      |          </head>
                      |          <body>
                      |            <h1> 404 - Invalid Request!</h1>
                      |            <h2> Query:</h2><br>
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
                      |            <img src = "http://www.likeplusone.org/feelsbadman.png"
                      |                 alt="WatDatDenn?"
                      |                 title ="Nosey, aren't you?!"
                      |                 width="200"
                      |                 height="200"
                      |                 align="right"/>
                      |          </body>
                      |        </html>""".stripMargin
      sender() ! HttpResponse(status = 404, entity = HttpEntity(`text/html`, enty))
  }
}

/**
 * This actor comes into play when the backend to the service is unreachable for any reason.
 * It is the null-handler which just returns a static error code.
 * Can be seen as an example of changing the server's behavior to something that does not connect to any kind of
 * database at all.
 */
class DbDownHandlerActor
    extends HandlerActor
    with    Logging {

  import DbDownHandlerActor._

  def customReceive: Receive = {
    // Just add a catch-all for all kinds of GETS and POSTS to display error
    case HttpRequest(_,_,_,_,_) =>
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
          <img src = "http://wizardchan.org/v9k/src/1sa7wpv0.wizardchan.feelsbadman.png"
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
 * Defines a set of possible interactions with the database.
 * It needs to extend some trait 'DatabaseInteractions', wich implements the logics of interacting with the desired
 * backend. Thus the actor only defines the actions which are performed based on requests, but the implementation is
 * in another trait, which makes it possible to create actors which talk to different databases on the fly.
 *
 * This level of abstraction is introduced in order to allow the backend to be interchangeable from what the
 * http-server does.
 */
class DbHandlerActor extends HandlerActor{

  // On instantiation a trait of this kind has to be mixed in, which contains the implementations for the logics
  // defined below.
  this : database.DataBaseInteractions =>

  // All the logics on how to handle requests.
  def customReceive: Receive = {
    //~~~~~~~~~~~~~~~~~` DEMO THINGS TODO make these real functionalities
    case HttpRequest(GET, Uri.Path("/createExample"),_,_,_) =>
      TitanDatabaseConnection.createPrototypeGraph("dev")
      sender() ! HttpResponse(entity = dbToString)
    case HttpRequest(GET, Uri.Path("/getMethods"),_,_,_) =>
      sender() ! HttpResponse(entity = getMethods("length"))
    case HttpRequest(GET, Uri.Path("/getImplementation"),_,_,_) =>
      sender() ! HttpResponse(entity = getBestImplementation("length(String)"))
    case HttpRequest(GET, Uri.Path("/getAllImplementations"),_,_,_) =>
      sender() ! HttpResponse(entity = getAllImplementations("length(String)"))
    case HttpRequest(GET, Uri.Path("/insertMethod"),_,_,_) =>
      sender() ! HttpResponse(entity = insertFunction)
    //~~~~~~~~~~~~~~~~~~~~~~

    // General messages.
    case HttpRequest(GET, Uri.Path("/printGraph"),_,_,_) =>
      sender() ! HttpResponse(entity = dbToString)

    case HttpRequest(GET, Uri.Path("/canHasGraph"),_,_,_) =>
      sender() ! HttpResponse(entity = "Of course you could. IF I HAD ANY!!")
  }
}

object DbHandlerActor {
  // TODO this is just a bit sluggish
  def titanProps: Props = Props(new DbHandlerActor with TitanDbInteractions)
}





