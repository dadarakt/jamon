package database

/**
 * @author dadarakt
 * Class used to open existing databases or create a new one, if desired.
 */

import com.thinkaurelius.titan.core.{TitanFactory, TitanGraph}
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration
import com.thinkaurelius.titan.core.attribute.Geoshape
import com.tinkerpop.blueprints.Edge
import com.tinkerpop.blueprints.Vertex
import com.tinkerpop.blueprints.util.ElementHelper
import scala.collection.JavaConversions._
import org.apache.commons.configuration.BaseConfiguration
import com.typesafe.config.ConfigFactory
// Error handling and logging
import scala.util.{Try, Success, Failure}
import grizzled.slf4j.Logging
import scala.util.control.NonFatal

import com.thinkaurelius.titan.core.attribute.Cmp._


object TitanDatabaseConnection extends Logging{

	// defines the namespace for indexing
	val INDEX_NAME = "search"

  /**
   * This main is only called to intantiate a new version of the database.
   * Nothing else!
   * @param args
   */
	def main(args: Array[String]): Unit = {
    val g = openGraphFromConfig("dev")
//    val g = createPrototypeGraph("dev")
    println(graphToString(g.get))
	}

//  def main(args: Array[String]) = {
//    val g = openGraphFromConfig()
//    g match {
//      case Success(graph) =>
//        loadGodlyData(graph)
//        print(graph)
//      case Failure(e) =>
//        error(e)
//    }
//  }

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
		import GraphDatabaseConfiguration.{	STORAGE_NAMESPACE,
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
   * nothing more at the moment.
   * Loads some simple example-data into the database. Follows the defined structure.
   */
  def instantiateGraphFramework(graph: TitanGraph): Unit = {

    import util.JuliaTypes._
    info(s"Instantiating the graph ${graph.getType("name")}")

    // ID TODO --> There should be an algorithm to generate and decode ID's
    graph.makeKey("iid").dataType(classOf[String]).indexed(classOf[Vertex]).indexed(classOf[Edge]).unique.make

    // The key which determines the type of a node in a graph
    graph.makeKey("type").dataType(classOf[String])

    // The key for the toplevel of the graph. There are only three vertices which never change. Add them!
    graph.makeKey("topLevelName").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make

    info("adding the principal vertices to the graph:")
    val functions = graph.addVertex(null)
    ElementHelper.setProperties(functions, "topLevelName", "functions", "iid", "top:1")
    val packages = graph.addVertex(null)
    ElementHelper.setProperties(packages, "topLevelName", "packages", "iid", "top:2")
    val arguments = graph.addVertex(null)
    ElementHelper.setProperties(arguments, "topLevelName", "arguments", "iid", "top:3")

    // keys and labels for function metadata (not the leaves)
    graph.makeKey("funcName").dataType(classOf[JuliaFunctionName]).indexed(classOf[Vertex]).unique.make
    graph.makeKey("methName").dataType(classOf[JuliaSignature]).indexed(classOf[Vertex]).unique.make
    // This should be a unique ID for each implementation entered
    graph.makeKey("implName").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make
    // This will be the ID of the implementation together with a timestamp for the leaves
    graph.makeKey("implNameWithVersion").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make

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

    graph.commit
    // keys and labels for argument metadata
    //graph.makeKey("arg").dataType(classOf[JuliaArguments])
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


  /**
   * Prints out everything in a graph. Only used for testing, does not retrieve
   * any useful information but just prints out the names of the nodes and
   * edges.
   */
  def printGraph(graph: TitanGraph): Unit = {
    // First just get all the vertices
    println(s"~~~~~~~~~~~~~~~~~~~~~~~~ vertices ~~~~~~~~~~~~~~~~~~~~~~~~")
    val vertices  = graph.getVertices.map((v: Vertex) => Option(v.getProperty("name"))).flatten
    //vertices.foreach {(vertex: String) => println(vertex)}
    println(vertices)

    println(s"~~~~~~~~~~~~~~~~~~~~~~~~  edges   ~~~~~~~~~~~~~~~~~~~~~~~~")
    val edges = graph.getEdges.map((e: Edge) => Option(e.getLabel)).flatten
    println(edges)

    graph.commit
  }

  /**
   * Prints out everything in a graph. Only used for testing. TODO only test BS
   */
  def graphToString(graph: TitanGraph): String = {
    // First just get all the vertices
    val verticesHeader = s"~~~~~~~~~~~~~~~~~~~~~~~~ vertices ~~~~~~~~~~~~~~~~~~~~~~~~"
    //val vertices  = graph.getVertices.map((v: Vertex) => Option(v.getProperty("id"))).flatten
    println(s"There are ${graph.getVertices.size} vertices in the graph.")
    val vertices = graph.getVertices.toList

    val edgesHeader = s"~~~~~~~~~~~~~~~~~~~~~~~~  edges   ~~~~~~~~~~~~~~~~~~~~~~~~"
    val edges = graph.getEdges.map((e: Edge) => Option(e.getLabel)).flatten

    graph.commit
    (verticesHeader, vertices, edgesHeader, edges).productIterator.mkString("\n")
  }


}
