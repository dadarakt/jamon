package actors

/**
 * Created by jannis on 4/23/14.
 */

import akka.actor.{ActorRef, ActorSystem, Actor, Props}
import akka.io.{IO}
import akka.util.Timeout
import spray.can.Http
import spray.can.Http.{Unbind, Bind}
import spray.http._
import HttpMethods._
import scala.concurrent.duration._
import com.typesafe.config.ConfigFactory
import java.net.InetSocketAddress
import grizzled.slf4j.Logging
import prototype.HttpServer.ShutdownServer
import akka.io.Tcp.{ConfirmedClosed, Aborted, PeerClosed}
import spray.http.HttpRequest
import spray.http.HttpResponse
import scala.util.{Failure, Success}
import actors.HttpServerActor.ChangeHandler

/**
 * Opens up a simple HTTP server using the config information.
 */
object SprayServer extends App with Logging{
  
  // Create the actor system
  implicit val system = ActorSystem("ServerTest")
  // Just some time to let the actor-system initialize before trying to do something in it
  Thread.sleep(1000)

  // Meanwhile try to open the graph, for now do not go online if the graph cannot be retrieved!
  val graph = database.TitanDatabaseConnection.openGraphFromConfig()
  graph match {
    case Success(graph) =>
      info(s"The graph was found and the server sets up connections to it. ${graph.toString}}")
      // Set up the server here
    case Failure(ex) =>
      error(s"Could not connect to the database, critical failure, server will go into error-mode")
      // Set up the server with an actor, which only returns appropriate error messages.
  }

  // Fire up the server in the system
  val server = system.actorOf(HttpServerActor.props(PlayfulHandlerActor.props), "httpServer")
}

/**
 * Starts a http server which presents the functionality to the outside world.
 * @param system The actor system in which the server is to run
 * @param handleProps Contains the information for the actor which is to be used to process messages
 */
class HttpServerActor(handleProps: Props)(implicit val system: ActorSystem)
  extends Actor
  with    Logging {


  // On start setup the connection from the configuration and try to connect to the port
  // Is also called on restart (default in 'postRestart')
  override def preStart = {
    bindListener(PlayfulHandlerActor.props)
  }

  // Some cleaning up
  override def postStop = {
    IO(Http) ! Http.Unbind
    info("Server was shut down succesfully.")
  }

  // All the stuff which is important to consider coming from the spray framework
  def receive: Receive = {
    case Http.CommandFailed =>
      error("Could not start the server! System not online!")

    case b @ Http.Bound =>
      info(s"Server is connected: $b")

    case ShutdownServer =>
      info("Shutting down the Http-server.")
      context.unwatch(self)
      context.stop(self)

    case ChangeHandler(handlerProps) =>
      implicit val timeout = Timeout(3.seconds)
      import system.dispatcher
      import akka.pattern.ask
      val unboundMessage = (IO(Http) ? Unbind(3 seconds)).mapTo[Http.Unbound.type]
      unboundMessage.onComplete{
        case Success(mess) =>
          info("Changing the handler")
      }

  }

  def bindListener(handler: Props) = {
    info("Firing up the Http-server")
    // Set up the listener on the port as a child actor.
    val portListener: ActorRef = context.actorOf(handleProps, "portListener")
    val conf        = ConfigFactory.load()
    val ip          = conf.getString("connection.localIp")
    val port        = conf.getInt("connection.port")

    info(s"~~~~~~~~~~~~~~> Trying to bind to port $port at IP-address $ip")

    val bindMessage = new Bind(portListener, new InetSocketAddress(ip, port), 100, Nil, None)
    IO(Http) ! bindMessage
    info("Done setting up the Http-server")
  }
}

/**
 * Compagnion object
 */
object HttpServerActor{
  def props(handleProps: Props)(implicit system: ActorSystem): Props = Props(new HttpServerActor(handleProps))

  // Can be used as a message to shutdown the server cleanly
  case object ShutdownServer
  // A message which is used to change the behavior of the server on runtime
  case class  ChangeHandler(handlerProps: Props)
}



//~~~~~ Simple echo handler for future-reference, not meant for production in any sense! ~~~~~//
/**
 * A simple actor which just sends back a message. This is the so called "Handler actor" which takes in dispatched
 * HTTP requests from the HttpServerConnection
 */
class EchoHandlerActor extends Actor with Logging{
  implicit val timeout: Timeout = 1.second // for the actor 'asks'

  def receive = {

    // This means the actor will take the task. Could react to server-overload here with checks.
    case c: Http.Connected =>
      info(s"Incoming connection from: ${c.remoteAddress}")
      sender ! Http.Register(self)

    // Fallback which simply shows the request from the user
    case r @ HttpRequest(GET, uri, header, entity, protocol) =>
      // Send the query back to the user
      val headers = header.map((h: HttpHeader) => s"${h.name} -----> ${h.value}").mkString("\n")
      val response = s"Here is the query made: \n GET REQUEST \n $uri \n $headers \n $entity \n $protocol"
      sender() ! HttpResponse(status = 200, entity = response)

    // All HttpRequests which are unknown
    case _: HttpRequest =>
      sender ! HttpResponse(status = 404, entity = "Unknown resource!")

    case PeerClosed => //do nothing

    case Aborted => // do nothing

    case ConfirmedClosed => // do nothing
  }
}

object EchoHandlerActor {
  def props: Props = Props(new EchoHandlerActor)
}




