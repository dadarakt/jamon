package database

import com.thinkaurelius.titan.core.TitanGraph

import grizzled.slf4j.Logging
import scala.util.{Try, Failure, Success}
import scala.util.control.NonFatal
import util.JuliaTypes._

/**
 * Created by Jannis on 5/1/14.
 */


/**
 * Defines the user-level interface to the database, makes connections interchangeable.
 * This can be seen as static methods which can be called by actors on their mixed in implementation to do
 * transactions with the database.
 */
trait DataBaseInteractions {
  // TODO these are just a first sketch of what could be done
  def dbToString: String
  def getNode(name: String): String
  def getFunction(signature: JuliaSignature) // With a precise match
  def getMethods(function: String): String
  def getBestImplementation(meth: String): String
  def getAllImplementations(meth: String): String

  def insertFunction : String

  def find: JuliaFunctions // Should be overloaded multiple times for seach with different paramaters.
  def retrieve: JuliaFunctions // Returnes the whole function, could be separated later with just returning meta-info
  // first and after that give back the whole function if desired.
}

/**
 * The resource which represents the graph so that it does not need to be instantiated every single time but can be
 * accessed after first use. Every other object will use references to this graph and make the requests using the
 * optimized driver of the underlying implementation.
 */
object GraphObject extends Logging {

  // Get the method needed for the setup of the graph
  import TitanDatabaseConnection.openGraphFromConfig

  val _graph: Try[TitanGraph] = openGraphFromConfig()

  def graph: TitanGraph = _graph match {
    case Success(g) =>
      g
    case Failure(ex) =>
      throw ex //Let the user of the resource decide how to handle this situation
  }
}





