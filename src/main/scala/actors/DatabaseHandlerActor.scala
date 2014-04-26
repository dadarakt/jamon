package actors

/**
 * Created by jannis on 4/25/14.
 */

import akka.actor.{Props, Actor}
import akka.util.Timeout
import spray.can.Http
import spray.http._
import spray.http.HttpMethods._
import spray.http.MediaTypes._
import spray.http.HttpRequest
import spray.http.HttpResponse
import akka.io.Tcp.{ConfirmedClosed, Aborted, PeerClosed}
import scala.concurrent.duration._
import grizzled.slf4j.Logging

/**
 * First prototype of an actor that can take HttpReqeuests and goes to the database to retrieve the information.
 */
class DatabaseHandlerActor extends Actor with Logging{
  implicit val timeout: Timeout = 3.second // for the actor 'asks'

  def receive = {
    // This means the actor will take the task. Could react to server-overload here with checks.
    case c: Http.Connected =>
      info(s"Incoming connection from: ${c.remoteAddress}") //TODO this should be disabled in production
      sender ! Http.Register(self)

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

    // Fallback which simply shows the request from the user as a 404
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

    case PeerClosed => //do nothing

    case Aborted => // do nothing

    case ConfirmedClosed => // do nothing
  }
}

object DatabaseHandlerActor {
  def props: Props = Props(new DatabaseHandlerActor)
}
