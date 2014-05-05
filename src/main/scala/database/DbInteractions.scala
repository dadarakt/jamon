package database

import com.thinkaurelius.titan.core.TitanGraph
import scala.util._
import grizzled.slf4j.Logging
import scala.util.Failure
import scala.util.Success
import scala.util.control.NonFatal
import util.JuliaTypes.JuliaSignature

/**
 * Created by Jannis on 5/1/14.
 */


/**
 * Defines the interface to the database, makes connections interchangeable.
 * This can be seen as static methods which can be called by actors on their mixed in implementation to do
 * transactions with the databsae.
 */
trait DataBaseInteractions {

  def dbToString : String
  def getNode(name: String): String
  def getFunction(signature: JuliaSignature)
}

/**
 * Defines methods to read data from a Titan-Database.
 */
trait TitanDbInteractions
  extends DataBaseInteractions
  with    Logging {

  import TitanDatabaseConnection._

  // Use the available graph
  val graph: Option[TitanGraph] =
    try {
      Some(GraphObject.graph)
    } catch {
      case NonFatal(e) =>
        None
    }

  def dbToString: String = graph match {
    case Some(graph) =>
      graphToString(graph)
    case None         =>
      error("Client tried to access offline-db. Alarm!")
      "DB could not be accessed. Please try again later."
  }

  def getNode(name: String): String = ???

  def getFunction(signature: JuliaSignature) = ???
}

/**
 * The resource which represents the graph so that it does not need to be instantiated every single time but can be
 * accessed after first use
 */
object GraphObject extends Logging {

  import TitanDatabaseConnection.openGraphFromConfig

  val _graph: Try[TitanGraph] = openGraphFromConfig()

  def graph: TitanGraph = _graph match {
    case Success(g) =>
      g
    case Failure(ex) =>
      throw ex //Let the user of  the resourcedecide how to handle this situation
  }
}

