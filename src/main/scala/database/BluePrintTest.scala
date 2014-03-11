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
import scala.Option
import org.apache.log4j.Logger
import org.apache.log4j.Level

object BluePrintTest {

def main(args: Array[String]){

	//Logger.getRootLogger.setLevel(log4j.Level.FATAL)
  //println(Logger.level)

    /**
     * Reads the config needed for the database from the global configuration file. Throws any
     * occuring exceptions since without sensible configuration this cannot run properly. 
     */
    def readConfigForDB: BaseConfiguration = {
    	val globalConf = ConfigFactory.load
    	new BaseConfiguration {
    		setProperty("storage.backend", globalConf.getString("database.storage.backend"))
    		setProperty("storage.hostname", globalConf.getString("database.storage.hostname"))
      	setProperty("storage.directory" , globalConf.getString("database.storage.directory"))
    	}
    }

	val config = readConfigForDB

    // Try opening a graph using a config file
    val g: TitanGraph = try {
      TitanFactory.open(config)
    } catch{
      case NonFatal(e) => {
        println("Cannot connect to the database!", e)
        return // Just get out of here for now
      }
    }


    g.shutdown
    
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