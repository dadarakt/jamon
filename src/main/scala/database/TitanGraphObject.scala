package database

import _root_.util.MeasureFunction
import grizzled.slf4j.Logging
import scala.util.{Failure, Success, Try}
import com.thinkaurelius.titan.core._
import com.tinkerpop.blueprints.Vertex
import com.tinkerpop.blueprints.util.ElementHelper
import scala.util.Success
import scala.util.Failure
import scala.util.control.NonFatal
import com.thinkaurelius.titan.core.attribute.Text
import scala.collection.JavaConversions._


/**
 * The resource which represents the graph so that it does not need to be instantiated every single time but can be
 * accessed after first use. Every other object will use references to this graph and make the requests using the
 * optimized driver of the underlying implementation. This object also holds the logic to open the graph and handle the
 * schema of the graph
 */
object TitanGraphObject extends Logging {

  val _graph: Try[TitanGraph] = openGraphFromConfig()

  def graph: TitanGraph = _graph match {
    case Success(g) =>
      g
    case Failure(ex) =>
      throw ex //Let the user of the resource decide how to handle this situation
  }

  /**
   * Opens a graph using the provided configuration file
   */
  def openGraphFromConfig(configPath: String = "conf/titan.properties"): Try[TitanGraph] = {
    try {
      val graph = TitanFactory.open(configPath)
      if(graph.isOpen) {
        info(s"Opened graph from configuration file $configPath.")
      }
      Success(graph)
    } catch {
      case NonFatal(e) => {
        error(s"Could not open the database using the provided configuration in $configPath, $e")
        Failure(e)
      }
    }
  }

  /**
   * Sets up the framework for the first prototype of the database. Simple structure to retrieve and add functions and
   * nothing more at the moment. //TODO THIS IS ONLY DEMO MATERIAL AND IN NO WAY A REAL IMPLEMENTATION
   * Loads some simple example-data into the database. Follows the defined structure.
   */
  def instantiateGraphFramework: String = {
    info(s"Instantiating the graph $graph")
    info("Clearing out the old graph with all its data")

    // ----- Create the schema ------
    info(s"Creating the schema:")
    val mgmt = graph.getManagementSystem

    // helpers
    val topLevel        = "topLevel"
    val function        = "function"
    val method          = "method"
    val implementation  = "implementation"
    val version         = "version"

    try {
      // The labels to identify different classes of vertices in the graph
      info("\t -> Creating the labels")
      // Labels for all nodes used in the database which form the meta-levels above the actual data
      // Static label for the major nodes in the graph which are not extendable for users
      mgmt.makeVertexLabel(topLevel).setStatic.make
      mgmt.makeVertexLabel(function).make
      mgmt.makeVertexLabel(method).make
      mgmt.makeVertexLabel(implementation).make
      mgmt.makeVertexLabel(version).make

      info("\t -> Creating the property keys")
      // Property keys to store meta-information in the vertices
      val iid                 = mgmt.makePropertyKey("iid").dataType(classOf[String]).make
      val topLevelName        = mgmt.makePropertyKey(s"${topLevel}Name").dataType(classOf[String]).make // << used only for the entry points
      val functionName        = mgmt.makePropertyKey(s"${function}Name").dataType(classOf[String]).make
      val args                = mgmt.makePropertyKey(s"${method}Name").dataType(classOf[String]).cardinality(Cardinality.LIST).make
      val implementationName  = mgmt.makePropertyKey(s"${implementation}Name").dataType(classOf[String]).make
      val documentation       = mgmt.makePropertyKey(s"${function}Doc").dataType(classOf[String]).make

      // Property keys which are used to store data in the leafs of the code-tree
      mgmt.makePropertyKey("author").dataType(classOf[String]).make
      mgmt.makePropertyKey("timestamp").dataType(classOf[String]).make
      mgmt.makePropertyKey("documentation").dataType(classOf[String]).make
      mgmt.makePropertyKey("code").dataType(classOf[String]).make
      mgmt.makePropertyKey("metadata").dataType(classOf[String]).make
      info("\t -> Done creating the property keys")

      info("\t -> Creating the edge-labels")
      // The labels for edges which define the relationships in the database
      // There is no need to traverse from a function node to the top-level node
      mgmt.makeEdgeLabel("isFunc").unidirected.multiplicity(Multiplicity.SIMPLE).make
      mgmt.makeEdgeLabel("methOf").multiplicity(Multiplicity.SIMPLE).make
      mgmt.makeEdgeLabel("implOf").multiplicity(Multiplicity.SIMPLE).make
      mgmt.makeEdgeLabel("versOf").multiplicity(Multiplicity.SIMPLE).make
      info("\t -> Done creating the edge-labels")

      info("\t -> Setting up the indices")
      // Create the indices used to speed up traversals over the graph (especially retrieval of nodes)
      mgmt.buildIndex("byFunctionName", classOf[Vertex]).addKey(functionName).buildCompositeIndex()
      mgmt.buildIndex("byFunctionNameMixed", classOf[Vertex]).addKey(functionName).buildMixedIndex("search")
      info("\t -> Done setting up the indices")

      mgmt.commit()
      info("Created the schema for the graph")

      // Insert the basic nodes to the graph
      info("\t -> Adding the central vertices to the graph:")
      val functions = graph.addVertexWithLabel(topLevel)
      ElementHelper.setProperties(functions, s"${topLevel}Name", "functions", "iid", s"$topLevel:1")
      val packages = graph.addVertexWithLabel(topLevel)
      ElementHelper.setProperties(packages, "topLevelName", "packages", "type", "top", "iid", s"$topLevel:2")
      val arguments = graph.addVertexWithLabel(topLevel)
      ElementHelper.setProperties(arguments, "topLevelName", "arguments", "type", "top", "iid", s"$topLevel:3")
      info("\t -> Inserted central vertices into the graph")

      info("Done setting up the graph")
      "Sucessfully initialized the graph schema"
    } catch {
      case ex: TitanException =>
        info(s"There was an error during the creation of the schema for the graph, $ex")
        mgmt.rollback()
        s"Failed during creation of the graph schema, $ex"
    }
  }

  /**
   * Prints out everything in a graph. Only used for testing. TODO only test BS
   */
  def graphToString: String = {
    val topLabel: VertexLabel = graph.getVertexLabel("topLevel")
    try {
      val (_, time1) =
        MeasureFunction.measureCallWithResult(graph.query.has("functionName", "length").vertices.mkString(" "))
      val (functionNames, time2) =
        MeasureFunction.measureCallWithResult(graph.query.has("functionName", Text.CONTAINS_REGEX, ".*len.*").vertices.
          map(node => node.getPropertyKeys).mkString(" "))

      info(s"indexed access was $time1 ms, mixed index: $time2 ms.")
      info(functionNames)
      functionNames
    } catch {
      case NonFatal(ex) =>
        warn("Error while retrieving nodes from the index")
        ex.toString()
    }
  }
}
