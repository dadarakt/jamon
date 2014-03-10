/**
 * The example from https://github.com/thinkaurelius/titan/wiki/Blueprints-Interface
 * Which provides an introduction to the blueprints interface for graphdatabases
 */

import org.apache.commons.configuration.BaseConfiguration
import com.thinkaurelius.titan.core._
import scala.util.control.NonFatal
import com.tinkerpop.blueprints.{Edge, Vertex}
import scala.collection.JavaConversions._
import com.thinkaurelius.titan.graphdb.database.StandardTitanGraph
import com.typesafe.config._

object BluePrintTest {

def main(args: Array[String]){

	//
	val conf = new BaseConfiguration {
      setProperty("storage.backend", "cassandra")
      setProperty("storage.hostname", "127.0.0.1")
      setProperty("storage.directory" ,"/tmp/testing")
    }

    // Try opening a graph using a config file
    // val g: TitanGraph = try {
    //   TitanFactory.open("graph.properties")
    // } catch{
    //   case NonFatal(e) => {
    //     println("Cannot connect to the database!", e)
    //     return // Just get out of here for now
    //   }
    // }

    // load some configs and prints them
    val config: Config = ConfigFactory.load
    println(config.getString("testing.wurst").getClass)

    // val usedConfigs = g.getConfiguration
    // for(entry <- usedConfigs) println(entryaa)

 //    val features = g.getFeatures.toMap
 //    for(feature <- features) println(s"Here is a feature: $feature")

 //    val juno: Vertex = g.addVertex(null);
	// juno.setProperty("name", "juno");
	// val jupiter: Vertex = g.addVertex(null);
	// jupiter.setProperty("name", "jupiter");
	// val married: Edge = g.addEdge(null, juno, jupiter, "married");

	// g.commit
}

}