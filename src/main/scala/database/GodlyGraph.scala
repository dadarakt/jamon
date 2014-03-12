/**
 * @author dadarakt
 * Class which reproduces the tests for the graph of the god in scala for my purposes.
 * https://github.com/thinkaurelius/titan/blob/master/titan-core/src/main/java/com/thinkaurelius/titan/example/GraphOfTheGodsFactory.java
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

// Some constants which are used
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration.INDEX_BACKEND_KEY
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration.STORAGE_DIRECTORY_KEY

object GodlyGraph {

	// constant which defines the namespace
	val INDEX_NAME = "search"

	def main(args: Array[String]){

		// Get the graph representation
		val graph = openGraph("/home/jannis/database/wurst/")
		printGraph(graph)
		graph.shutdown
	}

	/**
	 * Prints out everthing in the beloved graph
	 */
	def printGraph(graph: TitanGraph) = {

	}

	/**
	 * Opens a graph or creates it if it does not exist
	 */
	def openGraph(dir: String): TitanGraph = {

		val graph = TitanFactory.open(dir)
		if(graph.isOpen) println(s"Database $dir has been openend successfully")
		else throw new RuntimeException("Dat ging schief!")
		graph
	}
	/**
	 * Setups-up a complete graph
	 */
	def initializeGraph(dir: String): TitanGraph = {
		val graph = createGraph(dir)
		load(graph)
		graph
	}


	/**
	 * Creates a graph at the given filename
	 */
	def createGraph(dir: String): TitanGraph = {
		val config = new BaseConfiguration
		val storage = config.subset(GraphDatabaseConfiguration.STORAGE_NAMESPACE)
        // configuring local backend
        storage.setProperty(GraphDatabaseConfiguration.STORAGE_BACKEND_KEY, "local")
        storage.setProperty(GraphDatabaseConfiguration.STORAGE_DIRECTORY_KEY, dir)
        // configuring elastic search index
        val index = storage.subset(GraphDatabaseConfiguration.INDEX_NAMESPACE).subset(INDEX_NAME)
        index.setProperty(INDEX_BACKEND_KEY, "elasticsearch")
        index.setProperty("local-mode", true)
        index.setProperty("client-only", false)
        index.setProperty(STORAGE_DIRECTORY_KEY, dir + File.separator + "es")

		TitanFactory.open(config)
	}

	/**
	 * Loads a bunch of data into the graph. Static method, is this a good idea? TODO
	 */
	def load(graph: TitanGraph) = {
		// Make some keys
		graph.makeKey("name").dataType(classOf[String]).indexed(classOf[Vertex]).unique.make
	    graph.makeKey("age").dataType(classOf[Integer]).indexed("search", classOf[Vertex]).make
	    graph.makeKey("type").dataType(classOf[String]).make
	    val time 	= graph.makeKey("time").dataType(classOf[Integer]).make
	    val reason 	= graph.makeKey("reason").dataType(classOf[String]).
	    indexed("search", classOf[Edge]).make
	    graph.makeKey("place").dataType(classOf[Geoshape]).indexed("search", classOf[Edge]).make

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