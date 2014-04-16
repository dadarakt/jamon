package actors

/**
 * Created by jannis on 4/16/14.
 */

import akka.actor._

/**
 * Takes care of receiving incoming queries and dispatching them into the system for further queries. The port should
 * be free imeeadiately and the dispatch-time must be minimal.
 * @param numConnections The number of parrallel worker, meaning the number of ports available
 * @param workerProps The properties to create the worker-children
 * @param supervisorStrategy The strategy how workers should recover from failure.
 */
class ConnectionHandler(numConnections: Int = 5, workerProps: Props, supervisorStrategy: SupervisorStrategy)
    extends FixedSizeWorkManager(numConnections, workerProps, supervisorStrategy)
    with    PropagatedKill  {

  // Hoe the dispatcher handles the connections.
  override def receive = {
    case _ => //TODO implement behavior!
  }

  // First just do the work unordered
  override def priorities = AkkaWorkManager.SamePriority

}
