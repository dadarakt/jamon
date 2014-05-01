package database

import com.thinkaurelius.titan.core.TitanGraph
import scala.util.{Failure, Success}
import grizzled.slf4j.Logging

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
}

/**
 * Defines methods to read data from a Titan-Database.
 */
trait TitanDbInteractions
  extends DataBaseInteractions
  with    Logging {

  import TitanDatabaseConnection._
  
  // The reference to the database from which interactions are spawned. Intantiated on creation.
  lazy val graph: TitanGraph = openGraphFromConfig() match {
    case Success(_db) => _db
    // In case of failure just propagate the error
    case Failure(ex) =>
      error("Could not open the database. Will not work")
      throw ex
  }
  
  def dbToString: String = graphToString(graph)

  def getNode(name: String): String = ???
}


