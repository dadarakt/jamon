package actors

import akka.actor._
import akka.event.LoggingReceive
import akka.actor.Terminated
import scala.collection.mutable
import scala.util.Random
import actors.PropagatedKill.PropagateAndShutdown
import grizzled.slf4j.Logging

/**
 * an actor that will manage a work queue and distribute it to workers following the work pulling pattern.
 * Based on  http://letitcrash.com/post/29044669086/balancing-workload-across-nodes-with-akka-2
 * Used to manage facebook tokens, db connections, etc.
 * User: jannis
 * Date: 04/01/14
 */
trait AkkaWorkManager extends Actor with Logging with PropagatedKill {

  import AkkaWorkManager._

  //alias for storing the current work being done:
  protected sealed trait CurrentWork

  protected case class ActiveWork(requestedBy: ActorRef, work: Any) extends CurrentWork

  protected case object NoWork extends CurrentWork

  protected def priorities: PartialFunction[Any, Int]


  ///////////////////////////////

  //the known AsyncFbClients that can be used to do work, mapped to the work they are currently doing (and for whom that
  //work is being done)
  protected val workers = mutable.Map.empty[ActorRef, CurrentWork]

  //the work waiting to be done
  protected val workQ = new mutable.PriorityQueue[ActiveWork]()(
    Ordering.by {
      aw: ActiveWork => priorities.applyOrElse(aw.work, (_: Any) => 0)
    }
  )

  //are we shutting down?
  protected var shuttingDown = false

  // Are we still running some work?
  protected def inProcess = workQ.size > 0 || workers.exists(_._2 != NoWork)

  //////////////////////////////

  /**
   * notifies the worker even if the queue is empty (do not call this directly, use notifyOne or notifyAll)
   * @param worker
   */
  private def notifyOneWorkerNoCheck(worker: ActorRef) {
    worker ! WorkIsReady
  }

  private def notifyOneWorker(worker: ActorRef) {
    if (workQ.nonEmpty) notifyOneWorkerNoCheck(worker)
  }

  private def notifyAllWorkers() {
    if (workQ.nonEmpty) {
      Random.shuffle(workers.toList) //shuffle the map a bit to make sure not to always send the work to  the same worker
        .foreach {
        case (w, NoWork) => notifyOneWorkerNoCheck(w)
        case _ =>
      }
    }
  }

  /**
   * call this to add a new worker to the queue
   * @param newWorker
   */
  protected def addWorker(newWorker: ActorRef) {
    info("adding worker %s".format(newWorker))
    workers.put(newWorker, NoWork)
    context.watch(newWorker)
    if (!workQ.isEmpty) notifyOneWorker(newWorker)
  }

  private def deleteWorker(conn: ActorRef) {
    workers.remove(conn)
  }

  ///////////////////////////

  /**
   * add/remove connections
   */
  protected def manageConnection: Receive = {

    case AddWorker(workerRef) =>
      addWorker(workerRef)

    case ForgetConnection(workerRef) => deleteWorker(workerRef)
    //a worker died
    case Terminated(worker) =>
      //the worker was supposed to do something, add it back to the queue
      workers.get(worker) match {
        case None | Some(NoWork) =>
        case Some(ActiveWork(from, msg)) =>
          enqueueWork(msg, from)
      }
      deleteWorker(worker)
      if (shuttingDown && workers.isEmpty) {
        context.stop(self)
      }
  }

  /**
   * a connection is ready to do some work
   */
  protected def workRequested: Receive = {

    case m@WorkerRequestsWork(worker) =>
      workers.get(worker) match {
        case Some(NoWork) =>
          if (workQ.isEmpty) {
            worker ! NoWorkToBeDone
          } else {
            workQ.dequeue() match {
              case aw@ActiveWork(workSender, work) =>
                workers.put(worker, aw)
                worker.tell(WorkToBeDone(work), workSender)
              case x =>
                warn("wrong stuff on the queue: %s".format(x))
            }
          }
        case Some(w) =>
        //actor is already active, just ignore the request
        //debug("ignoring work request from: %s because of %s".format(worker, w))
        case None =>
          error("worker is asking for work, but we are not managing him" + worker)
          unhandled(m)
      }
  }

  /**
   * worker has completed its work
   */
  protected def workDone: Receive = {

    case WorkIsDone(worker) if (workers.contains(worker)) =>
      workers.put(worker, NoWork)
      notifyOneWorker(worker)
      maybeShutdown()

    case WorkFailed(worker, msg, from, failure) =>
      workers.put(worker, NoWork)
      notifyOneWorker(worker)
      from ! Status.Failure(failure)
      maybeShutdown()

    case ReleaseMe(worker) =>
      workers.put(worker, NoWork)
      debug("workers after release: %s".format(workers))
      notifyOneWorker(worker)
      maybeShutdown()
  }

  /**
   * any other message has to be a FB query
   */
  protected def doWork: Receive = {
    case WontDo(worker, msg, from) =>
      //a worker was asked to do something, but he is too lazy
      //we'll find someone else to do it then
      workers.put(worker, NoWork)
      workQ.enqueue(ActiveWork(from, msg))
      notifyAllWorkers()

    case CantDo(worker, msg, from) =>
      //a worker was asked to to do something, but he can't
      workQ.enqueue(ActiveWork(from, msg))
      notifyAllWorkers()

    case work if !shuttingDown =>
      enqueueWork(work, sender)
  }

  private def enqueueWork(work: Any, sender: ActorRef) {
    workQ.enqueue(ActiveWork(sender, work))
    notifyAllWorkers()
  }

  private def maybeShutdown() {
    if (shuttingDown) {
      if (workQ.isEmpty) {
        val stillWorking = workers.exists {
          case (worker, ActiveWork(_, _)) => true
          case _ => false
        }
        if (!stillWorking) {
          //all workers are done and the queue is empty, stop the workers
          workers.foreach {
            case (worker, _) =>
              worker ! PropagateAndShutdown
          }
        }
      }
    }
  }

  protected def shutdown: Receive = {
    case PropagateAndShutdown => //we got the order to shutdown, let's drain the queue
      shuttingDown = true
  }


  /////////////////////

  /**
   * Override this to catch special messages that you need to deal with. By default, this doesn't catch anything
   * @return
   */
  protected def customManagement: Receive = new Receive {
    def apply(v1: Any): Unit = ()

    def isDefinedAt(x: Any): Boolean = false
  }

  ///////////////////

  override def receive = LoggingReceive {
    customManagement orElse manageConnection orElse workRequested orElse workDone orElse doWork orElse shutdown
  }

}

object AkkaWorkManager {

  val SamePriority: PartialFunction[Any, Int] = {
    case _ => 0
  }

  case class ForgetConnection(workerRef: ActorRef)

  // Messages from Workers
  case class WorkerRequestsWork(worker: ActorRef)

  case class WorkIsDone(worker: ActorRef)

  // Messages to Workers
  case class WorkToBeDone(work: Any)

  case object WorkIsReady

  case object NoWorkToBeDone

  case class WontDo(worker: ActorRef, msg: Any, requestedBy: ActorRef)

  case class CantDo(worker: ActorRef, msg: Any, requestedBy: ActorRef)

  case class AddWorker(worker: ActorRef)

  case class ReleaseMe(worker: ActorRef)

  case class WorkFailed(worker: ActorRef, msg: Any, requestedBy: ActorRef, failure: Throwable)

  case object TooManyRetries extends Exception("too many retries")

}


abstract class FixedSizeWorkManager(numberOfWorker: Int, props: Props, override val supervisorStrategy: SupervisorStrategy)
  extends AkkaWorkManager {
  for (i <- 0 until numberOfWorker) {
    val newWorker = context.actorOf(props, "worker-%d".format(i))
    addWorker(newWorker)
  }
}

object FixedQueueManager {

  sealed trait FixedQueueResponse extends BooleanSemantics

  /**
   * a question asked to the FixedQueueManager: is there still space to accept that much work
   * @param quantity
   */
  case class CanAcceptMoreWork(quantity: Int)

  /**
   * alias for asking for 1 slot
   */
  object CanAcceptMoreWork extends CanAcceptMoreWork(1)

  /**
   * answer to the CanAcceptMoreWork question, will reply this only if there is space at that particular
   * time. This is not strict as more message can come in the queue after it receive teh question.
   */
  case object WillAcceptMoreWork extends FixedQueueResponse with BooleanSemantics.Truey {
    val inverse = WontAcceptMoreWork

    override type inverseType = WontAcceptMoreWork.type
  }

  /**
   * answer to the CanAcceptMoreWork question, will reply this only if there is space at that particular
   * time. This is not strict as more message can come in the queue after it receive the question.
   */
  case object WontAcceptMoreWork extends FixedQueueResponse with BooleanSemantics.Falsy {
    val inverse = WillAcceptMoreWork

    override type inverseType = WillAcceptMoreWork.type
  }

}

trait FixedQueueManager {
  self: AkkaWorkManager =>

  import FixedQueueManager._

  def maxQueueSize: Int

  private def checkQueueSize: Receive = {
    case CanAcceptMoreWork(quantity) =>
      if (!shuttingDown && (workQ.size + quantity < maxQueueSize)) {
        sender ! WillAcceptMoreWork
      } else {
        if (!shuttingDown) warn(s"won't accept more work, queue ${workQ.size}+${quantity}>=${maxQueueSize}")
        else warn(s"shutting down, refusing extra work")
        sender ! WontAcceptMoreWork
      }
  }

  override def receive = LoggingReceive {
    Seq(customManagement, checkQueueSize, manageConnection, workRequested, workDone, doWork, shutdown) reduceLeft (_ orElse _)
  }


}
