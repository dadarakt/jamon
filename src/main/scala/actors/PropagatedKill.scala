package actors

import akka.actor.{Terminated, Actor}
import akka.routing.Broadcast

/**
 * Mixing in this will for a "graceful" shutdown of the actor system.
 * Send a `PropagateAndShutdown` message to that actor and - unlike the `PoisonPill` message -  it will ask the
 * children of this actor to `PropagateAndShutdown` and will eventually stop itself when all children are dead.
 * Note that this supposes that the children also mixin `PropagatedKill`.
 * Do not use this if your receive method matches everything, in this case, you have to manually extend your receive:
 * {{{
 *   def receive = casePropagatedKill orElse {
 *         case _ => ...
 *   }
 * }}}
 *
 * Note that this might not be the best way to kill actors in all cases.
 * The parent actor will stop processing message as soon as it receives the PropagatedKill message, and then it will
 * purge the children queues. If a child depends on the parent (or another child) to finish processing its
 * message queue, there is no warranty that the parent or other childs will still be alive.
 *
 * User: jannis
 * Date: 04/01/14
 */
trait PropagatedKill extends Actor {

  /**
   * once you send a `PropagateAndShutdown` message to this actor, it will switch to this state, waiting for `Terminated`
   * messages sent by its children. If you decide to override this method, be very careful to keep the contract.
   */
  protected def waitingShutdown: Receive = {
    // The if is after the => for a good reason. If it was before,
    // the `Terminated(ref)` might be sent to the `unhandled` method, but we don't want that, we just want to catch it
    // and ignore it until we receive the last children terminated message.
    case Terminated(ref) => if (context.children.isEmpty) {
      context stop self
    }
  }

  protected def propagatedKill: Receive = {
    case PropagatedKill.InnerPropagateAndShutdown => propagateAndShutdown()
    case Broadcast(PropagatedKill.InnerPropagateAndShutdown) => propagateAndShutdown()
  }

  /**
   * this method sets a watch on every children and sends a `PropagateAndShutdown` message to all of them. If you decide to
   * override this method, make sure to keep this contract. This will also change the behaviour of the actor, that will
   * just wait for everyone to shutdown.
   */
  protected def propagateAndShutdown() {
    if (context.children.isEmpty) {
      context stop self
    } else {
      context.children foreach {
        child =>
          context watch child
          //in case the child is a router, we need to have him broadcast to everyone. There is no way to know if the ref is such a thing, so send it to
          // everyone
          child ! PropagatedKill.PropagateAndShutdown
      }
      context become waitingShutdown
    }
  }

  /**
   * setup the right behaviour when receiving a `PropagateAndShutdown` message, keeps the default (super.unhandled) behaviour
   * for other messages. Make sure to keep the contract of this implementation if you override it.
   * @param message
   */
  override def unhandled(message: Any) {
    val matcher: PartialFunction[Any, Unit] = propagatedKill orElse {
      case _ => super.unhandled(message)
    }
    matcher(message)
  }

}

object PropagatedKill {

  object InnerPropagateAndShutdown
  object PropagateAndShutdown extends Broadcast(InnerPropagateAndShutdown)
}
