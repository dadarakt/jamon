package prototype

/**
 * Waits for connections, dispatches them over threads, reads the xml and spits out
 * queries to be processed using the database.
 * Created by jannis on 4/16/14.
 */

import java.net.{InetSocketAddress, Socket, ServerSocket}
import java.util.concurrent.{Executors, ExecutorService}
import java.io.{InputStreamReader, BufferedReader}

import java.util.Date
import akka.actor.{ActorSystem, Props, Actor}
import akka.io.{IO, Tcp }

/**
 * Tests the functionality of a simple socket based server system.
 */
object ServerTest extends App {
//  val ss = new NetworkService(8007,5)
//  ss.run()
  val system = ActorSystem("serverSystem")
  val server = system.actorOf(Props[Server], "server")
}

object ClientTest extends App {
  val client = new Socket("localhost", 8007)
}


class Server extends Actor {
  import Tcp._
  import context.system

  // Binds the server to the given address using the TCP manager
  // should send a 'Bound' message
  println("Setting up a listener on the port")
  IO(Tcp) ! Bind(self, new InetSocketAddress("192.168.1.100", 8007))

  def receive = {
    case b @ Bound(localAdress) =>
      println("We have created the listener succesfully") //TODO this should be logging

    case CommandFailed(_: Bind) =>
      println("could not set up the listener")
      context stop self

    case c @ Connected(remote, local) =>
      println("There is a connection.")
      println(remote.getAddress)
      val handler = context.actorOf(Props[SimpleHandler])
      val connection = sender()
      connection ! Register(handler)
  }
}

class SimpleHandler extends Actor {
  import Tcp._
  def receive = {
    case Received(data) =>
      println(s"-----> $data")
      sender() ! Write(data)
    case PeerClosed     => context stop self
  }
}

