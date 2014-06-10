package actors

/**
 * Created by jannis on 4/23/14.
 */

import akka.actor.{ActorRef, ActorSystem, Actor, Props}
import akka.io.{IO}
import akka.util.Timeout
import spray.can.Http
import spray.can.Http.{Bind}
import scala.concurrent.duration._
import com.typesafe.config.ConfigFactory
import java.net.InetSocketAddress
import grizzled.slf4j.Logging
import prototype.HttpServer.ShutdownServer
import scala.util.{Failure, Success}
import actors.HttpServerActor.ChangeHandler
import akka.pattern.ask

/**
 * Opens up a simple HTTP server using the config information.
 */
object SprayServer extends App with Logging{

  // Create the actor system
  implicit val system = ActorSystem("ServerTest")
  // Just some time to let the actor-system initialize before trying to do something in it
  Thread.sleep(1000)

  // Meanwhile try to open the graph, for now do not go online if the graph cannot be retrieved!
  // val graphTry = database.TitanDatabaseConnection.openGraphFromConfig()

  val handlerProps  = DbHandlerActor.titanProps
  val listenerProps = ListenerActor.props(handlerProps)
  val serverProps   = HttpServerActor.props(listenerProps)

  // Fire up the server in the system
  val server = system.actorOf(serverProps, "httpServer")
}

/**
 * Starts a http server which presents the functionality to the outside world.
 * @param system The actor system in which the server is to run
 * @param listenerProps Contains the information for the actor which is to be used to process messages
 */
class HttpServerActor(listenerProps: Props)(implicit val system: ActorSystem)
  extends Actor
  with    Logging {

  implicit val timeout = Timeout(3.seconds)
  import system.dispatcher

  // The current listener on the given port
  var portListener: Option[ActorRef] = None

  // On start setup the connection from the configuration and try to connect to the port
  // Is also called on restart (default in 'postRestart')
  override def preStart = {
    bindListener(listenerProps)
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

    // Hot-swapping of behavior via changing the handler
    case ChangeHandler(newHandleProps) =>
      //just forward this message to the current listener
      if(portListener.isDefined) {
        portListener.get ! ChangeHandler(newHandleProps)
      }
  }

  /**
   * Binds a (new) listener to the port (depending on already having one or not).
   *
   * @param handlerProps The kind of handler which is supposed to be used by the listener on startup.
   *                     Could be changed later using the 'ChangeHandler(newHandlerProps: Props)' message.
   */
  def bindListener(handlerProps: Props) = {
    // If there is an active listener kill it first
    if(portListener.isDefined) {
      info("Shutting down the old listener to instantiate a new one.")
      context.unwatch(portListener.get)
      context.stop(portListener.get)
      portListener = None
    }

    // Set up the listener on the port as a child actor.
    portListener    = Some(context.actorOf(handlerProps, "portListener"))
    val conf        = ConfigFactory.load()
    val ip          = conf.getString("connection.localIp")
    val port        = conf.getInt("connection.port")
    val options     = Nil
    val bindMessage = new Bind(portListener.get, new InetSocketAddress(ip, port), 100, options, None)
    val bound = (IO(Http) ? bindMessage).mapTo[Http.Bound]
    bound.onComplete {
      case Success(bound) =>
        info(s"Successfully bound the listener to ${bound.localAddress}")
      case Failure(ex) =>
        error("Could not connect the listener. Service will not be online, thus shutting down!")
        context.system.scheduler.scheduleOnce(1.second) { context.system.shutdown() }
    }
    // What is this supposed to achieve in the end ?
    // Maybe somewhat someone should explain this in more detail
    info("Done setting up the Http-server")
  }
}

/**
 * Compagnion object for the server.
 */
object HttpServerActor{
  def props(listenerProps: Props)(implicit system: ActorSystem): Props =
    Props(new HttpServerActor(listenerProps)(system))

  // Can be used as a message to shutdown the server cleanly
  case object ShutdownServer
  // A message which is used to change the behavior of the server on runtime
  case class  ChangeHandler(handlerProps: Props)
}
