package prototype

/**
 * Waits for connections, dispatches them over actors, reads the xml and spits out
 * queries to be processed using the database.
 * Created by jannis on 4/16/14.
 */

import java.net.{InetSocketAddress, Socket}
import akka.actor.{Kill, ActorSystem, Props, Actor}
import akka.io.{IO, Tcp}
import com.typesafe.config.ConfigFactory
import java.net.InetAddress
import grizzled.slf4j.Logging

/**
 * Tests the functionality of a simple socket based server system.
 */
object ServerTest extends App {
//  val ss = new NetworkService(8007,5)
//  ss.run()
  val system = ActorSystem("serverSystem")
  val server = system.actorOf(Props(new Server(SimpleHandler.props)), "server")
  Thread.sleep(5000)
  server ! Kill
  Thread.sleep(3000)
  system.actorOf(Props(new Server(SimpleHandler.props)), "server2")
  Thread.sleep(5000)
  system.shutdown()
}

/**
 * Tests the client behavior
 */
object ClientTest extends App {
  val client = new Socket("localhost", 8007)
}

/**
 * Takes incoming connections and dispatches the requests to
 * the workers which will do the request.
 * TODO keep track of all the incoming queries to send reasonable errors on failing
 */
class Server(workerProps : Props) extends Actor with Logging{
  import Tcp._
  import context.system

  // Get the initial setup
  val conf        = ConfigFactory.load()
  val manager     = IO(Tcp)
  // Get the connection point for the system to the outside
  val ip          = conf.getString("connection.localIp")
  val port        = conf.getInt("connection.port")

  /**
   * On startup this is performed (per default 'postRestart' also calls this)
   */
  override def preStart() : Unit = {
    // Binds the server to the given address using the TCP manager should return a 'Bound' message on success
    info(s"Setting up a server ($self) for at IP address $ip at port $port. Workers are of type: ${workerProps.actorClass}" )
    manager ! Bind(self, new InetSocketAddress(ip, port))
  }

  // The datastructure to keep track of the queries in the system.
  // TODO


  // This handles the incoming messages from the manager
  def receive = {
    case b @ Bound(localAdress) =>
      info(s"Listener is succesfully opened ($ip,$port)")

    case CommandFailed(_: Bind) =>
      error("could not set up the listener")
      context stop self

    // This is the message which comes from IO(Tcp) when a client connects
    case c @ Connected(remote, local) =>
      debug(s"Incoming connection from ${remote.getAddress}.")
      val handler = context.actorOf(workerProps)
      val connection = sender() //the IO manager
      connection ! Register(handler)
  }
}


/**
 * Dummy to implement some behavior, in this case echoing the message.
 * This actor will carry a lot of the behavior for the upcoming tasks.
 */
class SimpleHandler extends Actor {
  import Tcp._

  def receive = {
    // These messages come from the IO Manager, which has knowledge of the full connection
    case Received(message) =>
      Thread.sleep(1000) //TODO this is only to test the load on the system
      println(s"-----> $message")
      // This is the IO manager which knows about who made the request.
      val s = sender()
      s ! Write(message) // Echo for now.

    case PeerClosed     =>
      println("Stopped handler because peer closed the connection")
      context stop self
  }
}

object SimpleHandler {
  def props : Props = Props(new SimpleHandler)
}