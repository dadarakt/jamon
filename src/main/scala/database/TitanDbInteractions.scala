package database

import grizzled.slf4j.Logging
import com.thinkaurelius.titan.core.{TitanFactory, TitanGraph}
import scala.util.control.NonFatal
import scala.util.Try
import com.tinkerpop.blueprints.{Direction, Edge, Vertex}
import com.thinkaurelius.titan.core.attribute.Cmp._
import org.apache.commons.configuration.BaseConfiguration
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration._
import util.JuliaTypes.JuliaSignature
import scala.util.Failure
import scala.Some
import scala.util.Success
import com.typesafe.config.ConfigFactory
import com.tinkerpop.blueprints.util.ElementHelper
import com.thinkaurelius.titan.core.attribute.Geoshape
import scala.collection.JavaConversions._

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
      error("Client tried to access offline-db. Alarm!")
      "DB could not be accessed. Please try again later."
  }

  //~~~~~~~~~~~~~ HELPERS ~~~~~~~~~~~~~~~~
  /**
   * Abstracts away things like creating indices and stuff
   */
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
  def getNode(name: String): String = ???
  def getFunction(signature: JuliaSignature) = ???
  def find = ???
  def retrieve = ???

}


/**
 * Contains methods to interact with the titan instance on the machine
 */
object TitanDatabaseConnection extends Logging{

  // defines the namespace for indexing
  val INDEX_NAME = "search"

  /**
   * Opens a graph using a configuration file
   */
  def openGraphFromConfig(configFileName: String = "application"): Try[TitanGraph] = {
    try {
      val conf = readConfig(configFileName)
      val graph = TitanFactory.open(conf)
      Success(graph)
    } catch {
      case NonFatal(e) => {
        error(s"Could not access the database.")
        Failure(e)
      }
    }
  }

  /**
   * Prints out everything in a graph. Only used for testing. TODO only test BS
   */
  def graphToString(graph: TitanGraph): String = {

    val sep = "\n\t-->"

    val verticesHeader = s"~~~~~~~~~~~~~~~~~~~~~~~~ vertices ~~~~~~~~~~~~~~~~~~~~~~~~"
    val topVertices = graph.getVertices("type", "top").map((vertex: Vertex) =>
      for {
        prop <- vertex.getPropertyKeys
      } yield(s"$prop: ${vertex.getProperty[String](prop)}")
    ).mkString(sep)

    val funVertices = graph.getVertices("type", "func").map((vertex: Vertex) =>
      for {
        prop <- vertex.getPropertyKeys
      } yield(s"$prop: ${vertex.getProperty[String](prop)}")
    ).mkString(sep)

    val methVertices = graph.getVertices("type", "meth").map((vertex: Vertex) =>
      for {
        prop <- vertex.getPropertyKeys
      } yield(s"$prop: ${vertex.getProperty[String](prop)}")
    ).mkString(sep)

    val implVertices = graph.getVertices("type", "impl").map((vertex: Vertex) =>
      for {
        prop <- vertex.getPropertyKeys
      } yield(s"$prop: ${vertex.getProperty[String](prop)}")
    ).mkString(sep)

    val versVertices = graph.getVertices("type", "vers").map((vertex: Vertex) =>
      for {
        prop <- vertex.getPropertyKeys
      } yield(s"$prop: ${vertex.getProperty[String](prop)}")
    ).mkString(sep)


    val edgesHeader = s"\n~~~~~~~~~~~~~~~~~~~~~~~~  edges   ~~~~~~~~~~~~~~~~~~~~~~~~"

    val isFunction = graph.getEdges.map((edge: Edge) =>
      s"(${edge.getLabel}, out: ${edge.getVertex(Direction.OUT).getProperty[String]("iid")} in: ${edge.getVertex(Direction.IN).getProperty[String]("iid")})"
    ).mkString(sep)

    val edges = graph.getEdges.map((e: Edge) => Option(e.getLabel)).flatten

    graph.commit
    (verticesHeader,
      s"There are ${graph.getVertices.size} vertices in the graph.",
      "\nTOP-LEVEL VERTICES:",
      "\t-->" + topVertices,
      "\nFUNCTION-VERTICES",
      "\t-->" + funVertices,
      "\nMETHOD-VERTICES",
      "\t-->" + methVertices,
      "\nIMPLEMENTATION-VERTICES",
      "\t-->" + implVertices,
      "\nVERSIONS-VERTICES",
      "\t-->" + versVertices,
      edgesHeader,
      s"There are ${graph.getEdges.size} edges in the graph\n",
      "\t-->" + isFunction
      ).productIterator.mkString("\n")

    // try an indexed search
    //    for {
    //      result <- graph.indexQuery()
    //    } println(s"${result.getElement} , ${result.getScore}")
  }

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
   * @param configFileName The config from which to read the settings.
   * @return The loaded graph
   */
  def createPrototypeGraph(configFileName: String): Try[TitanGraph] = {
    info("Trying to setup the prototype graph...")
    openGraphFromConfig(configFileName) match {
      case Success(graph) =>
        info("found the graph, now instantiating it.")
        instantiateGraphFramework(graph)
        Success(graph)
      case f @ Failure(ex) =>
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
   * Reads the graph-related config from a config file. If none is given it will use the default
   * application.conf in the resources
   */
  def readConfig(configFile: String = "application"): BaseConfiguration = {
    // Import all the names used in the package for safer handling of the namespaces
    import GraphDatabaseConfiguration.{
      STORAGE_NAMESPACE,
      STORAGE_BACKEND_KEY,
      STORAGE_DIRECTORY_KEY,
      HOSTNAME_KEY,
      INDEX_BACKEND_KEY,
      INDEX_NAMESPACE
    }
    // Create the configuration from file. Will throw errors if keys are not found
    val globalConf = ConfigFactory.load()
    new BaseConfiguration {
      setProperty(s"$STORAGE_NAMESPACE.$STORAGE_BACKEND_KEY",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$STORAGE_BACKEND_KEY"))
      setProperty(s"$STORAGE_NAMESPACE.$STORAGE_DIRECTORY_KEY",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$STORAGE_DIRECTORY_KEY"))
      setProperty(s"$STORAGE_NAMESPACE.$HOSTNAME_KEY",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$HOSTNAME_KEY"))
      setProperty(s"$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.$INDEX_BACKEND_KEY",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.$INDEX_BACKEND_KEY"))
      setProperty(s"$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.directory",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.directory"))
      setProperty(s"$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.local-mode",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.local-mode"))
      setProperty(s"$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.client-only",
        globalConf.getString(s"database.$STORAGE_NAMESPACE.$INDEX_NAMESPACE.$INDEX_NAME.client-only"))
    }
  }


  /**
   * Sets up the framework for the first prototype of the database. Simple structure to retrieve and add functions and
   * nothing more at the moment. //TODO THIS IS ONLY DEMO MATERIAL AND IN NO WAY A REAL IMPLEMENTATION
   * Loads some simple example-data into the database. Follows the defined structure.
   */
  def instantiateGraphFramework(graph: TitanGraph): Unit = {

    import util.JuliaTypes._
    info(s"Instantiating the graph ${graph.getType("name")}")

    // ID TODO --> There should be an algorithm to generate and decode ID's
    graph.makeKey("iid").dataType(classOf[String]).indexed(classOf[Vertex]).indexed(classOf[Edge]).unique.make


    // The key which determines the type of a node in a graph
    graph.makeKey("type").dataType(classOf[String]).indexed(classOf[Vertex]).make
    // The key for the toplevel of the graph. There are only three vertices which never change. Add them!
    graph.makeKey("topLevelName").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make
    graph.makeKey("functionName").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make

    info("adding the principal vertices to the graph:")
    val functions = graph.addVertex(null)
    ElementHelper.setProperties(functions, "topLevelName", "functions", "type", "top", "iid", "top:1")
    val packages = graph.addVertex(null)
    ElementHelper.setProperties(packages, "topLevelName", "packages", "type", "top", "iid", "top:2")
    val arguments = graph.addVertex(null)
    ElementHelper.setProperties(arguments, "topLevelName", "arguments", "type", "top", "iid", "top:3")


    // keys and labels for function metadata (not the leaves)
    graph.makeKey("funcName").dataType(classOf[JuliaFunctionName]).indexed( classOf[Vertex]).unique.make
    graph.makeKey("methName").dataType(classOf[JuliaSignature]).indexed(classOf[Vertex]).unique.make
    // This should be a unique ID for each implementation entered
    graph.makeKey("implName").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make

    // The labels used to set functions in relation to one another
    graph.makeLabel("funcOf").manyToOne.make
    graph.makeLabel("methOf").manyToOne.make
    graph.makeLabel("implOf").manyToOne.make

    //keys for the leafs to store data in
    graph.makeKey("author").dataType(classOf[String])
    graph.makeKey("timestamp").dataType(classOf[String])
    graph.makeKey("documentation").dataType(classOf[String])
    graph.makeKey("code").dataType(classOf[String])
    graph.makeKey("metadata").dataType(classOf[String])


    // add some simple function into the database
    val length = graph.addVertex(null)
    ElementHelper.setProperties(length, "type", "func","functionName", "length", "iid", "func:1")
    val meth1 = graph.addVertex(null)
    ElementHelper.setProperties(meth1, "type" , "meth", "iid" ,"meth:1", "methodSignature" ,"length(String)", "methodFor" ,"func:1")
    val meth2 = graph.addVertex(null)
    ElementHelper.setProperties(meth2, "type" , "meth", "iid" ,"meth:2", "methodSignature" ,"length(Array)", "methodFor" ,"func:1")
    val impl1 = graph.addVertex(null)
    ElementHelper.setProperties(impl1, "type", "impl", "iid" , "impl:1", "implements", "meth:1", "author", "simon", "rating", "8")
    val impl2 = graph.addVertex(null)
    ElementHelper.setProperties(impl2, "type", "impl", "iid" , "impl:2", "implements", "meth:1", "author", "jannis", "rating", "2")
    val vers1 = graph.addVertex(null)
    ElementHelper.setProperties(vers1, "type", "vers", "iid", "vers:1", "versOf", "impl:1", "code", "Guten Tag, Welt.", "time" , "123456")
    val vers2 = graph.addVertex(null)
    ElementHelper.setProperties(vers2, "type", "vers", "iid", "vers:2", "versOf", "impl:1", "code", "Hello, world.", "time", "123890")

    // Add the edges that we want
    graph.addEdge(null,functions,length, "isFunction")
    graph.addEdge(null, length, meth1, "methodOf")
    graph.addEdge(null, length, meth2, "methodOf")
    graph.addEdge(null, meth1, impl1, "implementationOf")
    graph.addEdge(null, meth1, impl2, "implementationOf")
    graph.addEdge(null, impl1, vers1, "versionOf")
    graph.addEdge(null, impl1, vers2, "versionOf")

    graph.commit
  }

  /**
   * Inserts a node into the given graph with the given properties
   * @param graph
   * @param props
   */
  def insertNode(graph: TitanGraph, props: Map[String, AnyRef]): Unit = {
    val node = graph.addVertex()
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
    // Make some keys -> The important stuff
    graph.makeKey("name").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make
    graph.makeKey("age").dataType(classOf[Integer]).indexed("search", classOf[Vertex]).make
    graph.makeKey("type").dataType(classOf[String]).make
    val time 	= graph.makeKey("time").dataType(classOf[Integer]).make
    val reason 	= graph.makeKey("reason").dataType(classOf[String]).indexed("search", classOf[Edge]).make
    graph.makeKey("place").dataType(classOf[Geoshape]).indexed(INDEX_NAME, classOf[Edge]).make

    // Make some labels
    graph.makeLabel("father").manyToOne.make
    graph.makeLabel("mother").manyToOne.make
    graph.makeLabel("battled").sortKey(time).make
    graph.makeLabel("lives").signature(reason).make
    graph.makeLabel("pet").make
    graph.makeLabel("brother").make

    // And write it to the graph
    graph.commit

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
