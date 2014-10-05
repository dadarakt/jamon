package database

import _root_.util.JuliaTypes.JuliaSignature
import _root_.util.MeasureFunction
import grizzled.slf4j.Logging
import com.thinkaurelius.titan.core._
import scala.util.control.NonFatal
import scala.util.Try
import com.tinkerpop.blueprints._
import com.thinkaurelius.titan.core.attribute.Cmp._
import org.apache.commons.configuration.BaseConfiguration
import _root_.util.JuliaTypes.JuliaSignature
import scala.util.Failure
import scala.Some
import scala.util.Success
import com.typesafe.config.ConfigFactory
import com.tinkerpop.blueprints.util.ElementHelper
import com.thinkaurelius.titan.core.attribute.{Text, Contain, Geoshape}
import scala.collection.JavaConversions._
import scala.util.Failure
import scala.Some
import scala.util.Success
import com.thinkaurelius.titan.graphdb.query.TitanPredicate
import com.thinkaurelius.titan.core.util.TitanCleanup
import scala.util.Failure
import scala.Some
import scala.util.Success

/**
* Defines methods to read data from a Titan-Database for an actor
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
      error("Client tried to access offline-db.")
      "DB could not be accessed. Please try again later."
  }

  //~~~~~~~~~~~~~ HELPERS ~~~~~~~~~~~~~~~~
  def insertFunctionNode(graph: TitanGraph, props: Seq[String]) = {

  }

  def getMethods(function: String): String = {
    getMethodsForFunction(graph.get, function)
  }

  def getBestImplementation(meth: String): String = {
    TitanDatabaseConnection.getBestImplementation(graph.get, meth)
  }

  def getAllImplementations(meth: String): String = {
    TitanDatabaseConnection.getAllImplementations(graph.get, meth)
  }

  def findFunction(name: String)= {

  }

  def insertFunction: String = {
    val g = graph.get
    try {
      val g = graph.get
      val length = g.getVertices("iid", "func:1").iterator().next

      val meth1 = g.addVertex(null)
      ElementHelper.setProperties(meth1, "type" , "meth", "iid" ,"meth:3", "methodSignature" ,"length(Matrix)", "methodFor" ,"func:1")
      val impl1 = g.addVertex(null)
      ElementHelper.setProperties(impl1, "type", "impl", "iid" , "impl:3", "implements", "meth:3", "author", "jannis", "rating", "0")
      val vers1 = g.addVertex(null)
      ElementHelper.setProperties(vers1, "type", "vers", "iid", "vers:3", "versOf", "impl:3", "code", "Hier rechne ich mit Matrizen.", "time" , "1234567")

      // Add the edges that we want
      g.addEdge(null, length, meth1, "methodOf")
      g.addEdge(null, meth1, impl1, "implementationOf")
      g.addEdge(null, impl1, vers1, "versionOf")

      g.commit
      "Succesfully entered your new code! You should print the graph to observe changes."
    } catch {
      case NonFatal(e) =>
        g.rollback
        "Failed while entering data. " + e
    }
  }
  // TODO these need to be implemented still
  def getImplementation(name: String): String = ???
  def getFunction(signature: JuliaSignature) = ???
  def find = ???
  def retrieve = ???
  def getMethod(signature: JuliaSignature) = ???
}


/**
 * Contains methods to interact with TitanDB
 */
object TitanDatabaseConnection extends Logging{

  // defines the namespace for indexing
  val INDEX_NAME = "search"

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
   * Prints out everything in a graph. Only used for testing. TODO only test BS
   */
  def graphToString(graph: TitanGraph): String = {
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

  /**
   * Just demoing things
   * @param g
   */
  def addSomeShit(g: TitanGraph) = {
    insertNode(g, Map(("type" -> "meth"), ("iid" -> "meth:1"), ("methodSignature" -> "length(String)")))
  }


  /**
   * Returns the method (headers) for a function
   * @param func
   */
  def getMethodsForFunction(g: TitanGraph, func: String): String = {
    val fun = g.getVertices("functionName", func).iterator.next()
    val meths = fun.getVertices(Direction.OUT, "methodOf").map(_.getProperty[String]("methodSignature"))
    meths.mkString("\n")
  }


  def getBestImplementation(g: TitanGraph, meth: String): String = {
    val methi = g.getVertices("methodSignature", meth).iterator.next()
    val impls = methi.getVertices(Direction.OUT, "implementationOf").toSeq.sortBy(_.getProperty[String]("rating"))
    impls.last.getProperty[String]("author")
  }


  def getAllImplementations(g: TitanGraph, meth: String): String = {
    val methi = g.getVertices("methodSignature", meth).iterator.next()
    methi.getVertices(Direction.OUT, "implementationOf").map(_.getProperty[String]("author")).mkString("\n")
  }

  //def addImplementation()

  /**
   * Returns a vertex with the given property to the key from the graph
   */
  def retrieveVertex(graph: TitanGraph, key: String, property: String): Option[Vertex] = {
    println(graph.query.has(key, EQUAL, property).vertices)
    None
  }


  /**
   * Opens a graph using the directory.
   */
  def openGraphFromDir(dir: String): Try[TitanGraph] = {
    val graph = TitanFactory.open(dir)
    if(graph.isOpen){
      info(s"Database $dir has been openend successfully")
      Success(graph)
    } else {
      error("Could not access graph, will create the graph now.")
      Failure(new NoSuchElementException(s"Could not open the given graph at dir $dir"))
    }
  }

  /**
   * Uses the given (empty) graph to build the structure for the graph
   * @param configPath The config from which to read the settings.
   * @return The loaded graph
   */
  def createGraphFromConfig(configPath: String): Try[TitanGraph] = {
    info("Trying to setup the prototype graph...")
    openGraphFromConfig(configPath) match {
      case Success(graph) =>
        info("found the graph, now instantiating it.")
        instantiateGraphFramework(graph)
        Success(graph)
      case f @ Failure(ex) =>
        // Create the graph as written down
        f
    }
  }

  /**
   * Setups-up a the complete graph of the gods using the provided configuration
   */
  def createGraphOfTheGods(configFileName: String): Try[TitanGraph] = {
    info("Initializing graph...")
    openGraphFromConfig(configFileName) match {
      case Success(graph) =>
        loadGodlyData(graph)
        Success(graph)
      case f @ Failure(ex) =>
        f // Just push the exception
    }
  }


  /**
   * Sets up the framework for the first prototype of the database. Simple structure to retrieve and add functions and
   * nothing more at the moment. //TODO THIS IS ONLY DEMO MATERIAL AND IN NO WAY A REAL IMPLEMENTATION
   * Loads some simple example-data into the database. Follows the defined structure.
   */
  def instantiateGraphFramework(graph: TitanGraph): Unit = {
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
      // ID TODO --> There must be an algorithm to generate and decode the IDs
      // The names used to label the vertices in the graph
      val iid = mgmt.makePropertyKey("iid").dataType(classOf[String]).make
      info("\t -> Creating the labels")
      // Static label for the major nodes in the graph which are not extendable for users
      mgmt.makeVertexLabel(topLevel).setStatic.make
      // Labels for all nodes used in the database which form the meta-levels above the actual data
      val functionLabel = mgmt.makeVertexLabel(function).make
      mgmt.makeVertexLabel(method).make
      mgmt.makeVertexLabel(implementation).make
      mgmt.makeVertexLabel(version).make

      info("\t -> Creating the property keys")
      // Property keys to store meta-information in the nodes
      mgmt.makePropertyKey(s"${topLevel}Name").dataType(classOf[String]).make
      val functionName        = mgmt.makePropertyKey(s"${function}Name").dataType(classOf[String]).make
      val methodName          = mgmt.makePropertyKey(s"${method}Name").dataType(classOf[String]).make
      val implementationName  = mgmt.makePropertyKey(s"${implementation}Name").dataType(classOf[String]).make

      // Property keys which are used to store data in the leafs of the code-tree
      mgmt.makePropertyKey("author").dataType(classOf[String]).make
      mgmt.makePropertyKey("timestamp").dataType(classOf[String]).make
      mgmt.makePropertyKey("documentation").dataType(classOf[String]).make
      mgmt.makePropertyKey("code").dataType(classOf[String]).make
      mgmt.makePropertyKey("metadata").dataType(classOf[String]).make


      info("\t -> Creating the edge-labels")
      // The labels for edges which define the relationships in the database
      // There is no need to traverse from a function node to the top-level node
      mgmt.makeEdgeLabel("funcOf").unidirected.make
      mgmt.makeEdgeLabel("methOf").make
      mgmt.makeEdgeLabel("implOf").make

      info("\t -> Setting up the indices")
      // Create the indices used to speed up traversals over the graph (especially retrieval of nodes)
      mgmt.buildIndex("byFunctionName", classOf[Vertex]).addKey(functionName).buildCompositeIndex()
      mgmt.buildIndex("byFunctionNameMixed", classOf[Vertex]).addKey(functionName).buildMixedIndex("search")
      mgmt.commit()
      info("Created the schema for the graph")
    } catch {
      case ex: TitanException =>
        info(s"There was an error during the creation of the schema for the graph, $ex")
        mgmt.rollback()
    }




    // ----- Insert initial data -----
    info("\t -> Adding the central vertices to the graph:")
    val functions = graph.addVertexWithLabel(topLevel)
    ElementHelper.setProperties(functions, s"${topLevel}Name", "functions", "iid", s"$topLevel:1")
    val packages = graph.addVertexWithLabel(topLevel)
    ElementHelper.setProperties(packages, "topLevelName", "packages", "type", "top", "iid", s"$topLevel:2")
    val arguments = graph.addVertexWithLabel(topLevel)
    ElementHelper.setProperties(arguments, "topLevelName", "arguments", "type", "top", "iid", s"$topLevel:3")
    info("\t -> Inserted central vertices into the graph")


    // TODO the following insertions are only for demonstration
    // add some dummy functions in the database
    info("\t -> Adding dummy data into the graph")
    val length = graph.addVertexWithLabel(function)
    ElementHelper.setProperties(length,"functionName", "length", "iid", "func:1")
    val length2 = graph.addVertexWithLabel("function")
    ElementHelper.setProperties(length2, "functionName", "length2", "iid", "func:2" )
    // add some dummy methods in the datbase
    val meth1 = graph.addVertexWithLabel(method)
    ElementHelper.setProperties(meth1, "iid" ,"meth:1", "methodSignature" ,"length(String)", "methodFor" ,"func:1")
    val meth2 = graph.addVertexWithLabel(method)
    ElementHelper.setProperties(meth2, "iid" ,"meth:2", "methodSignature" ,"length(Array)", "methodFor" ,"func:1")
    val impl1 = graph.addVertexWithLabel(implementation)
    ElementHelper.setProperties(impl1, "iid" , "impl:1", "implements", "meth:1", "author", "simon", "rating", "8")
    val impl2 = graph.addVertexWithLabel(implementation)
    ElementHelper.setProperties(impl2,  "iid" , "impl:2", "implements", "meth:1", "author", "jannis", "rating", "2")
    val vers1 = graph.addVertexWithLabel(version)
    ElementHelper.setProperties(vers1,  "iid", "vers:1", "versOf", "impl:1", "code", "Guten Tag, Welt.", "time" , "123456")
    val vers2 = graph.addVertexWithLabel(version)
    ElementHelper.setProperties(vers2, "iid", "vers:2", "versOf", "impl:1", "code", "Hello, world.", "time", "123890")
    // Add some edges for demonstration
    graph.addEdge(null,functions,length, "isFunction")
    graph.addEdge(null, length, meth1, "methodOf")
    graph.addEdge(null, length, meth2, "methodOf")
    graph.addEdge(null, meth1, impl1, "implementationOf")
    graph.addEdge(null, meth1, impl2, "implementationOf")
    graph.addEdge(null, impl1, vers1, "versionOf")
    graph.addEdge(null, impl1, vers2, "versionOf")
    graph.commit
    info("Inserted the dummy data into the graph")

    info("Done setting up the graph")
  }


  /**
   * Inserts a node into the given graph with the given properties
   * @param graph
   * @param props
   */
  def insertNode(graph: TitanGraph, props: Map[String, AnyRef]): Unit = {
    val node = graph.addVertexWithLabel("kaese")
    for{
      prop <- props
    }(node.setProperty(prop._1, prop._2))
  }



  /**
   * Generates the identifier for the element in the database. Should be timestamped and contain basic information
   * about the type of element used. TODO this is just prototyping
   */
  def generateID(elemType: String): String = {
    elemType + ":" + System.currentTimeMillis.toString
  }


  /**
   * Uses the data given in the getting started example and pumps them into my implementation
   * for some early tests. Makes keys and indexes as well as data points.
   */
  def loadGodlyData(graph: TitanGraph) = {

    import Multiplicity._

    // ----- CREATION OF THE SCHEMA -----
    // Make some keys -> The important stuff
    val mgmt = graph.getManagementSystem

    // edge labels
    mgmt.makeEdgeLabel("father").multiplicity(MANY2ONE).make
    mgmt.makeEdgeLabel("mother").multiplicity(MANY2ONE).make
    mgmt.makeEdgeLabel("battled").make
    mgmt.makeEdgeLabel("lives").multiplicity(MANY2ONE).make
    mgmt.makeEdgeLabel("pet").make
    mgmt.makeEdgeLabel("brother").make

    // Make the property keys for the graph
    val name = mgmt.makePropertyKey("name").dataType(classOf[String]).make
    val age = mgmt.makePropertyKey("age").dataType(classOf[Integer]).make
    mgmt.makePropertyKey("type").dataType(classOf[String]).make
    mgmt.makePropertyKey("time").dataType(classOf[Integer]).make
    mgmt.makePropertyKey("reason").dataType(classOf[String]).make
    mgmt.makePropertyKey("place").dataType(classOf[Geoshape]).make

    val byName = mgmt.buildIndex("byName", classOf[Vertex]).addKey(name).buildCompositeIndex
    val byNameAndAge = mgmt.buildIndex("byNameAndAge", classOf[Vertex]).addKey(name).addKey(age).buildCompositeIndex
    // Write out the changes
    mgmt.commit


    // LAGACY does not compile!
//    graph.makeKey("name").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make
//    graph.makeKey("age").dataType(classOf[Integer]).indexed("search", classOf[Vertex]).make
//    graph.makeKey("type").dataType(classOf[String]).make
//    val time 	= graph.makeKey("time").dataType(classOf[Integer]).make
//    val reason 	= graph.makeKey("reason").dataType(classOf[String]).indexed("search", classOf[Edge]).make
//    graph.makeKey("place").dataType(classOf[Geoshape]).indexed(INDEX_NAME, classOf[Edge]).make

    // Make some labels
//    graph.makeLabel("father").manyToOne.make
//    graph.makeLabel("mother").manyToOne.make
//    graph.makeLabel("battled").sortKey(time).make
//    graph.makeLabel("lives").signature(reason).make
//    graph.makeLabel("pet").make
//    graph.makeLabel("brother").make

    // And write it to the graph
    // graph.commit

    // ----- INSERTION OF EXAMPLE DATA -----

    //Add some vertices
    val saturn = graph.addVertex(null)
    saturn.setProperty("name", "saturn")
    saturn.setProperty("age", 10000)
    saturn.setProperty("type", "titan")
    val sky = graph.addVertex(null)
    ElementHelper.setProperties(sky, "name", "sky", "type", "location")
    val sea = graph.addVertex(null)
    ElementHelper.setProperties(sea, "name", "sea", "type", "location")
    val jupiter = graph.addVertex(null)
    ElementHelper.setProperties(jupiter, "name", "jupiter", "age", new Integer(5000), "type", "god")
    val neptune = graph.addVertex(null)
    ElementHelper.setProperties(neptune, "name", "neptune", "age", new Integer(4500), "type", "god")
    val hercules = graph.addVertex(null)
    ElementHelper.setProperties(hercules, "name", "hercules", "age", new Integer(30), "type", "demigod")
    val alcmene = graph.addVertex(null)
    ElementHelper.setProperties(alcmene, "name", "alcmene", "age", new Integer(45), "type", "human")
    val pluto = graph.addVertex(null)
    ElementHelper.setProperties(pluto, "name", "pluto", "age", new Integer(4000), "type", "god")
    val nemean = graph.addVertex(null)
    ElementHelper.setProperties(nemean, "name", "nemean", "type", "monster")
    val hydra = graph.addVertex(null)
    ElementHelper.setProperties(hydra, "name", "hydra", "type", "monster")
    val cerberus = graph.addVertex(null)
    ElementHelper.setProperties(cerberus, "name", "cerberus", "type", "monster")
    val tartarus = graph.addVertex(null)
    ElementHelper.setProperties(tartarus, "name", "tartarus", "type", "location")

    // Add some edges
    jupiter.addEdge("father", saturn)
    jupiter.addEdge("lives", sky).setProperty("reason", "loves fresh breezes")
    jupiter.addEdge("brother", neptune)
    jupiter.addEdge("brother", pluto)
    neptune.addEdge("lives", sea).setProperty("reason", "loves waves")
    neptune.addEdge("brother", jupiter)
    neptune.addEdge("brother", pluto)
    hercules.addEdge("father", jupiter)
    hercules.addEdge("mother", alcmene)
    ElementHelper.setProperties(hercules.addEdge("battled", nemean), "time", new Integer(1), "place", Geoshape.point(38.1f, 23.7f))
    ElementHelper.setProperties(hercules.addEdge("battled", hydra), "time", new Integer(2), "place", Geoshape.point(37.7f, 23.9f))
    ElementHelper.setProperties(hercules.addEdge("battled", cerberus), "time", new Integer(12), "place", Geoshape.point(39f, 22f))
    pluto.addEdge("brother", jupiter)
    pluto.addEdge("brother", neptune)
    pluto.addEdge("lives", tartarus).setProperty("reason", "no fear of death")
    pluto.addEdge("pet", cerberus)
    cerberus.addEdge("lives", tartarus)

    // flush it into the graph
    graph.commit();
  }
}
