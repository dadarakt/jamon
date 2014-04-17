package actors

/**
 * Created by jannis on 4/17/14.
 */

import akka.actor.{Props, Actor}
import akka.io.Tcp
import grizzled.slf4j.Logging

/**
 * Dummy to implement some testing behavior for the ServerActor, in this case echoing the message with some delay.
 */
class EchoHandlerActor extends Actor with Logging{
  import Tcp._

  def receive = {
    // These messages come from the IO Manager, which has knowledge of the full connection
    case Received(message) =>
      // This is the IO manager which knows about who made the request.
      val connection = sender()
      Thread.sleep(1000) //TODO this is only to test the load on the system
      debug(s"$self got the following message >> $message")
      connection ! Write(message) // Echo for now.

    case PeerClosed     =>
      warn(s"$self will stop because peer closed the connection.")
      context stop self
  }
}

/**
 * Compagnion object which holds the props
 */
object SimpleHandler {
  def props : Props = Props(new EchoHandlerActor)
}
