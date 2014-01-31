package database

/**
 * Created by jannis on 1/30/14.
 *
 *
 */



import com.tinkerpop.rexster.client.{RexsterClientFactory, RexsterClientTokens, RexsterClient}
import scala.collection.JavaConversions._
import grizzled.slf4j.Logging
import com.tinkerpop.blueprints.impls.rexster.RexsterGraph
import org.apache.commons.configuration.BaseConfiguration
import scala.util.{Success, Try}
import com.thinkaurelius.titan.core.{TitanGraph, TitanFactory}
import com.tinkerpop.blueprints.{Edge, Vertex}
import scala.util.control.NonFatal
import com.tinkerpop.blueprints.Graph
import database._
import com.thinkaurelius.titan.graphdb.database.StandardTitanGraph
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration


/**
  * Trait used to wrap operations around a database underlying.
 */
trait DatabaseInteractions {
  def db : Graph
//  def insertNVertex(wurst: VertexProperties): Boolean
//  def retrieveVertex(index: String) : Vertex

}


/**
 * First implementation of something like a database object to be used
 */
object TitanDatabase extends DatabaseInteractions {
  var _db: Option[TitanGraph] = None

  def db = _db.get // Let this crash on purpose, if get fails, we have a problem
  /** Method which connects to an exisiting database or creates it, if not there yet.
    * Also does a check if all needed properties are in the database.
    * @param conf The configuration needed to connect to a database
    * @param createFlag Flags if the database should be created if not there yet.
    *                   TODO Should be turned of later or made obsolete entirely
    */
  def connectToDb(conf: BaseConfiguration, createFlag: Boolean = true) = {
    _db = None //TODO !!!
  }
}

/**
 * A representation of a database which represents the database
 * @param config
 */
class TitanDatabase(config: GraphDatabaseConfiguration) extends StandardTitanGraph(config){
  def db = None // TODO !!!
  def insertVertex = {
    true
  }
  def retrieveVertex(index: String) = {

  }
}
