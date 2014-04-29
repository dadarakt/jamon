package actors

import akka.actor.{Terminated, ActorRef, Actor, Props}
import grizzled.slf4j.Logging
import spray.can.Http
import actors.HttpServerActor.ChangeHandler

/**
 * Listenes on the port for connections and dispatches them to the handling actors.
 * For now there will be an actor spawned for every new connection but it is also possible to
 * have a pool of actors for that, to limit load and evoke back-pressure.
 * It tracks the actors which handle connections in order to kill all connections when the behavior changes.
 * This might not be optimal in all cases but for now the behavior should only change when there are drastical
 * changes somewhere else wich render all open connections useless anyways.
 * @param handlerProps The type of handler which handles the incoming connection.
 */
class ListenerActor(handlerProps: Props)
  extends Actor
  with Logging {

  import scala.collection.mutable

  // make this variable for possible later changes
  var _handleProps = handlerProps

  // Holds all open Connections
  var openConnections: mutable.LinkedHashSet[ActorRef] = mutable.LinkedHashSet[ActorRef]()

  def receive: Receive = {
    case c: Http.Connected =>
      val _sender = sender()
      // Create a new handler, put deathwatch on it and register the connection
      val handler = context.actorOf(_handleProps)
      context.watch(handler)
      openConnections += handler
      debug(s"Incoming connection from: ${c.remoteAddress}")
      info(s"------>Currently openend connections: ${openConnections.size }")
      _sender ! Http.Register(handler)

    case ChangeHandler(newHandler) =>
      info(s"The listener changed behavior to ${newHandler}")
      context.children.foreach(context.stop(_))
      _handleProps = newHandler

    case Terminated(handler) =>
      info(s"There was an actor being killed. $handler") //TODO this should be expected behavior later
      if(openConnections.contains(handler)){
        openConnections -= handler
      } else {
        error(s"There was a handler which was never created: $handler")
      }
  }
}

object ListenerActor {
  def props(handlerProps: Props) = Props(new ListenerActor(handlerProps))
}
