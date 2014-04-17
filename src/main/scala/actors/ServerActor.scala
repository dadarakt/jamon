package actors

/**
 * Created by jannis on 4/17/14.
 */

import akka.actor.{Actor, Props}
import grizzled.slf4j.Logging
import akka.io.{IO, Tcp}
import com.typesafe.config.ConfigFactory
import java.net.InetSocketAddress



/**
 * Takes incoming connections and dispatches the requests to
 * the workers which will do the request.
 * TODO keep track of all the incoming queries to send reasonable errors on failing
 */
class ServerActor(workerProps : Props) extends Actor with Logging{
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
  // TODO There could be a set amount of workers and a queue for incoming work in order to reduce the number of threads
  // and thus making the system decline work immediately instead of spawning a ton of actors which wait for processing
  // time indefinitely.


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
