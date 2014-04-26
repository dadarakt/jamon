package actors

/**
 * Created by jannis on 4/25/14.
 */

import akka.actor.{Props, Actor}
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


/**
 * A trait which is to be mixed into all actors that serve the http server for handling messages
 */
trait HandlerActor extends Actor with Logging {
  implicit val timeout: Timeout = 3.seconds

  // This has to be implemented by actors which mix in this trait
  def customReceive: Receive

  // Contains some common cases which every actor of this type should have
  def defaultReceive: Receive = {
    // Messages which indicates that a connection was setup by the listener
    case c: Http.Connected =>
      info(s"Incoming connection from: ${c.remoteAddress}") //TODO this should be debug in production
      sender ! Http.Register(self)

    case PeerClosed => //do nothing

    case Aborted => // do nothing

    case ConfirmedClosed => // do nothing

    // Fallback which simply shows the request from the user as a 404. This way actor which mix in this trait
    // just define their cases of interest and do not care about anything else
    case r @ HttpRequest(GET, uri, header, entity, protocol) =>
      // Unpack the headers for display (make a html list)
    val headers = header.map((h: HttpHeader) => s"<li>${h.name} -----> ${h.value}</li>").mkString("\n")
      val wurst = s"""<html>
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

      val ent = HttpEntity(`text/html`, wurst)
      sender() ! HttpResponse(status = 404, entity = ent)
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

object DatabaseHandlerActor {
  def props: Props = Props(new PlayfulHandlerActor)
}
