package database

/**
 * @author dadarakt
 * Class used to open existing databases or create a new one, if desired.
 */

import com.thinkaurelius.titan.core._
import org.apache.commons.configuration.BaseConfiguration
import org.apache.commons.configuration.Configuration
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration
import com.thinkaurelius.titan.core.attribute.Geoshape
import com.tinkerpop.blueprints.Edge
import com.tinkerpop.blueprints.Vertex
import com.tinkerpop.blueprints.util.ElementHelper
import java.io.File
import scala.collection.JavaConversions._
import org.apache.commons.configuration.BaseConfiguration
import com.typesafe.config._
// Error handling and logging
import ch.qos.logback.classic.Logger
import org.slf4j.LoggerFactory
import ch.qos.logback.classic.Level
import scala.util.{Try, Success, Failure}
import grizzled.slf4j.Logging
import scala.util.control.NonFatal



object TitanDatabaseConnection extends Logging{

	// Set the log level manually... TODO make this in a config xml file on the classpath
	// val log = LoggerFactory.getLogger(org.slf4j.Logger.ROOT_LOGGER_NAME).asInstanceOf[Logger]
	// log.setLevel(Level.OFF)
	// defines the namespace for indexing
	val INDEX_NAME = "search"

	def main(args: Array[String]){
		val g = openGraphFromConfig()
		g match {
			case Success(graph) => {
				printGraph(graph)
				graph.shutdown	
			}
			case Failure(e) => {
				error(e)
			}
		}		
	}

	/**adds a logger property that you can use to retrieve the Logger object
	 * Prints out everything in a graph. Only used for testing. TODO only test BS
	 */
	def printGraph(graph: TitanGraph): Unit = {
		// First just get all the vertices
		println(s"~~~~~~~~~~~~~~~~~~~~~~~~ vertices ~~~~~~~~~~~~~~~~~~~~~~~~")
		val vertices  = graph.getVertices.map(v => Option(v.getProperty("name"))).flatten	
		//vertices.foreach {(vertex: String) => println(vertex)}	
		println(vertices)	

		println(s"~~~~~~~~~~~~~~~~~~~~~~~~  edges   ~~~~~~~~~~~~~~~~~~~~~~~~")
		val edges = graph.getEdges.map(e => Option(e.getLabel)).flatten
		println(edges)

		graph.commit
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
			error("Could not access graph")
			Failure(new NoSuchElementException("Could not find the graph"))
		}	
	}

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
				error("Could not access the database")
				Failure(e)
			}
		}
	}


	/**
	 * Setups-up a the complete graph of the gods using the provided configuration
	 */
	def createGraphOfTheGods(configFileName: String): Try[TitanGraph] = {
		info("Initializing graph...")
		openGraphFromConfig(configFileName) match {
			case Success(graph) => {
				loadGodlyData(graph)
				Success(graph)
			}
			case f@Failure(ex) => f
		}
	}


	/**
	 * Reads the graph-related config from a config file. If none is given it will use the default
	 * application.conf
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
		val globalConf = ConfigFactory.load
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
	 * Uses the data given in the getting started example and pumps them into my implementation
	 * for some early tests. Makes keys and indexes as well as data points.
	 */
	def loadGodlyData(graph: TitanGraph) = {
		// Make some keys -> The important stuff
		graph.makeKey("name").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make
	    graph.makeKey("age").dataType(classOf[Integer]).indexed("search", classOf[Vertex]).make
	    graph.makeKey("type").dataType(classOf[String]).make
	    val time 	= graph.makeKey("time").dataType(classOf[Integer]).make
	    val reason 	= graph.makeKey("reason").dataType(classOf[String]).
	    indexed("search", classOf[Edge]).make
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