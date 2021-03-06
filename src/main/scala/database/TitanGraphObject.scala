package database

import _root_.utils.MeasureFunction
import grizzled.slf4j.Logging
import scala.util.{Random, Failure, Success, Try}
import com.thinkaurelius.titan.core._
import com.tinkerpop.blueprints.{Direction, Vertex}
import com.tinkerpop.blueprints.util.ElementHelper
import scala.util.control.NonFatal
import com.thinkaurelius.titan.core.attribute.Text
import scala.collection.JavaConversions._
import scala.util.Failure
import scala.Some
import scala.util.Success
import utils.JuliaTypes.JuliaSignature

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

  private var _functionVertex: Option[Vertex] = _
  def functionVertex = _functionVertex

  ////////////////////////////////////////////////////////////////////////////////////////////////
  // CONSTANTS TO USE FOR THE DATABASE-SCHEMA
  ///////////////////////////////////////////////////////////////////////////////////////////////
  final val TopLevel        = "topLevel"
  final val Function        = "function"
  final val Method          = "method"
  final val Implementation  = "implementation"
  final val Version         = "version"
  final val Signature       = "signature"
  final val SignatureString = "signatureString"

  final val FunctionName    = "FunctionName"
  final val TopLevelName    = "TopLevelName"
  final val Index           = "search"

  final val Iid             = "iid" // To be used later, disregarded for prototyping
  final val Author          = "author"
  final val TimeStamp       = "timestamp"
  final val Documentation   = "documentation"
  final val Code            = "code"
  final val MetaData        = "metadata"
  final val Arguments       = "arguments"
  final val Weighting       = "weighting"

  final val IsFunction      = "isFunction"
  final val MethodOf        = "methOf"
  final val ImplementationOf = "implOf"
  final val VersionOf       = "versOf"

  final val InitialWeighting: java.lang.Integer = 1



  /**
   * Opens a graph using the provided configuration file
   */
  def openGraphFromConfig(configPath: String = "conf/titan.properties"): Try[TitanGraph] = {
    try {
      val g = TitanFactory.open(configPath)
      if(g.isOpen) {
        info(s"Opened graph from configuration file $configPath.")
        // Find out whether the graph has valid schema yet by searching for the toplevel node
        try {
          g.query.has(TopLevelName, "functions").vertices.headOption match {
            case Some(v) => {
              info("The graph is configured, will use it.")
              _functionVertex = Some(v)
            }
            case None => {
              info("The graph has no valid schema, will create it now!")
              instantiateGraphFramework(g)
            }
          }
        } catch {
          case ex: java.lang.IllegalArgumentException =>
          info("The graph has no valid schema, will create it now.")
          instantiateGraphFramework(g)
        }
        Success(g)
      } else {
        Failure(new IllegalAccessError("could not find the graph, what is going on?"))
      }
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
  def instantiateGraphFramework(g: TitanGraph): String = {
    info(s"Creating the schema for graph $g:")
    val mgmt = g.getManagementSystem
    try {
      // The labels to identify different classes of vertices in the graph
      info("\t -> Creating the labels")
      // Labels for all nodes used in the database which form the meta-levels above the actual data
      // Static label for the major nodes in the graph which are not extendable for users
      mgmt.makeVertexLabel(TopLevel).make
      val functionLabel = mgmt.makeVertexLabel(Function).make
      mgmt.makeVertexLabel(Method).make
      mgmt.makeVertexLabel(Implementation).make
      mgmt.makeVertexLabel(Version).make
      info("\t -> Done creating the labels.")

      info("\t -> Creating the property keys")
      // Property keys to store meta-information in the vertices
      val iid                 = mgmt.makePropertyKey(Iid).dataType(classOf[String]).make
      val topLevel            = mgmt.makePropertyKey(TopLevelName).dataType(classOf[String]).make // << used only for the entry points
      val function            = mgmt.makePropertyKey(FunctionName).dataType(classOf[String]).make
      val argString           = mgmt.makePropertyKey(Arguments).dataType(classOf[String]).make
      val signature           = mgmt.makePropertyKey(Signature).dataType(classOf[String]).make
      val signatureString     = mgmt.makePropertyKey(SignatureString).dataType(classOf[String]).make
      val documentation       = mgmt.makePropertyKey(Documentation).dataType(classOf[String]).make
      val timestamp           = mgmt.makePropertyKey(TimeStamp).dataType(classOf[java.lang.Long]).make
      val code                = mgmt.makePropertyKey(Code).dataType(classOf[String]).make
      val author              = mgmt.makePropertyKey(Author).dataType(classOf[String]).make
      val weighting           = mgmt.makePropertyKey(Weighting).dataType(classOf[java.lang.Integer]).make
      val metadata            = mgmt.makePropertyKey(MetaData).dataType(classOf[String]).make
      // Property keys which are used to store data in the leafs of the code-tree
      info("\t -> Done creating the property keys")

      info("\t -> Creating the edge-labels")
      // The labels for edges which define the relationships in the database
      // There is no need to traverse from a function node to the top-level node thus unidirected
      mgmt.makeEdgeLabel("isFunction").unidirected.make
      val methOf = mgmt.makeEdgeLabel("methOf").make
      mgmt.makeEdgeLabel("implOf").multiplicity(Multiplicity.SIMPLE).make
      mgmt.makeEdgeLabel("versOf").multiplicity(Multiplicity.SIMPLE).make
      info("\t -> Done creating the edge-labels")

      info("\t -> Setting up the indices")
      // Create the indices used to speed up traversals over the graph (especially retrieval of nodes)
      mgmt.buildIndex("entryPoints", classOf[Vertex]).addKey(topLevel).buildCompositeIndex
      mgmt.buildIndex("byFunctionName", classOf[Vertex]).addKey(function).buildCompositeIndex
      mgmt.buildIndex("byArguments", classOf[Vertex]).addKey(argString).buildCompositeIndex
      mgmt.buildIndex("byFunctionNameMixed", classOf[Vertex]).addKey(function).buildMixedIndex(Index)
      mgmt.buildEdgeIndex(methOf, "methodsByWeighting", Direction.OUT, Order.DEFAULT, signatureString)
      info("\t -> Done setting up the indices")

      mgmt.commit()
      info("Created the schema for the graph")

      // Insert the basic nodes to the graph
      info("\t -> Adding the central vertices to the graph:")
      val functions = g.addVertexWithLabel(TopLevel)
      ElementHelper.setProperties(functions, TopLevelName, "functions", TimeStamp, System.currentTimeMillis: java.lang.Long)
//      val arguments = graph.addVertexWithLabel(TopLevel)
//      ElementHelper.setProperties(arguments, "topLevelName", "arguments", "type", "top", "iid", s"$TopLevel:3")
//      val packages = graph.addVertexWithLabel(TopLevel)
//      ElementHelper.setProperties(packages, "topLevelName", "packages", "type", "top", "iid", s"$TopLevel:2")
      info("\t -> Inserted central vertices into the graph")
      g.commit()
      _functionVertex = Some(functions)
      info("Done setting up the graph")
      "Sucessfully initialized the graph schema"
    } catch {
      case NonFatal(ex) =>
        info(s"There was an error during the creation of the schema for the graph. Rolling back changes after $ex")
        mgmt.rollback()
        s"Failed during creation of the graph schema, $ex"
    }
  }

  var hasShitInGraph = false
  /**
   * Prints out everything in a graph. Only used for testing. DOES not work for larger datasets because of the amount of
   * vertices which have to be traversed and also the memory pressure and file writing processes.
   */
  def graphToString: String = {
    info("Printing the graph...")

//    val numVertices = graph.query.vertices.size
//    info(s"There are $numVertices vertices in the graph.")
  //    s"This is the amount of vertices in the graph: $numVertices"
    val start = System.currentTimeMillis
    val numVertices = graph.query.vertices.size
    info(s"There are $numVertices vertices in the graph")
    val functions = functionVertex.get.getVertices(Direction.OUT, IsFunction).toList
    val numFunction = functions.length
    info(s"there are $numFunction functions in the graph")
    val stringedFunctions = functions.map( functionV => {
      // Gather data
      val name                = functionV.getProperty[String](FunctionName)
      val methods             = functionV.getVertices(Direction.OUT).toList
      val numMethods          = methods.length
      val implementations     = methods.map(_.getVertices(Direction.OUT, ImplementationOf)).flatten
      val numImplementations  = implementations.length
      val versions            = implementations.map(_.getVertices(Direction.OUT, VersionOf)).flatten
      val numVersions         = versions.length
      val avgImplPerMethod    = numImplementations.toFloat / numMethods
      val avgVersPerImpl      = numVersions.toFloat / numImplementations
      val authors             = versions.map(_.getProperty[String](Author)).toSet
      val times               = versions.map(_.getProperty[Long](TimeStamp))
      val firstEdit           = times.max
      val lastEdit            = times.min
      val methodi = methods.map(v => s"$name(${v.getProperty[String](SignatureString).mkString(", ")})").mkString(" - ")
      // Create the string to show the data
      val methodsString       = s"\t -- Methods for this function: $methodi"
      val implString          = s"\t -- Num implementations: $numImplementations, avg implementations per method: $avgImplPerMethod"
      val versionString       = s"\t -- Num versions: $numVersions, avg versions per implementation: $avgVersPerImpl"
      val authorString        = s"\t -- Authors for this function: ${authors.mkString(", ")}"
      val editString          = s"\t -- First edit: $firstEdit, last edit: $lastEdit"
      List(s" --> function: $name",methodsString, implString, versionString, authorString, editString).mkString("\n")
    }).mkString("\n")

    info(stringedFunctions)
    graph.commit
    s"Found $numFunction functions, the graph has $numVertices vertices in ${System.currentTimeMillis - start}: \n $stringedFunctions"
  }
}
