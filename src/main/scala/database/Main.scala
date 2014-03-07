package database

/**
 * Created by jannis on 1/14/14.
 * This might be the entry point to the system but let's see.
 */

import grizzled.slf4j.Logging
import org.apache.commons.configuration.BaseConfiguration
import scala.util.Try
import com.thinkaurelius.titan.core._
import com.tinkerpop.blueprints.{Edge, Vertex}
import scala.util.control.NonFatal
import scala.collection.JavaConversions._
import scala.io.Source
import com.thinkaurelius.titan.graphdb.blueprints.TitanBlueprintsGraph
import com.thinkaurelius.titan.graphdb.database.StandardTitanGraph
import com.tinkerpop.blueprints.ThreadedTransactionalGraph

object Main extends Logging{
// Load a file and read all the lines for further processing
  val lines = try{
    Source.fromFile("res/Main.scala").getLines().toSeq
  }

  // Constants
  val GraphName = "graph"

  def main(args: Array[String]){

    // Setup configuration for the graph we want
    val conf = new BaseConfiguration {
      setProperty("storage.backend", "cassandra")
      setProperty("storage.hostname", "127.0.0.1")
      setProperty("storage.directory" ,"/tmp/titanuis")
      setProperty("storage.enable-basic-metrics", "true")
    }

    // This should make the graph instance I wanna have
    val g: TitanGraph = try {
      TitanFactory.open(conf)
    } catch{
      case NonFatal(e) => {
        error("Cannot connect to the database!", e)
        return // Just get out of here for now
      }
    }

    GraphUtils.clearGraph(g)


    // Print initial database
    GraphUtils.printGraph(g)

    // Just make sure the graph is there and ready
    println(s"-------> ${g.isOpen}")
    println(g.getClass)

    // Start a transaction on the graph
    val transaction = g.newTransaction
    // And add ALL THE LINES
    for(line <- lines) {
      val vertex = transaction.addVertex(null)
      vertex.setProperty("lineOfCode", line)
    }
    // println(transaction.hasModifications)
    // transaction.commit
    transaction.commit

    Thread.sleep(1000)

    // printDatabase(g)

    //Read out all the vertices
    println(s"Number of lines: ${lines.length}")

    // Retrieve all vertices to a sequence
    val vertices = g.getVertices.toSeq
    println(s"Number of vertices: ${vertices.length}")
    g.commit


    // printDatabase(g)
    // // Finally remove all vertices in the graph
    // clearGraph(g)   
  }
}

object GraphUtils {
  /**
     * Clears all data from a graph, should be handles with extreme caution!
     */
    def clearGraph(graph: ThreadedTransactionalGraph) = {
      //info("Clearing out all data from the graph")
      val transaction = graph.newTransaction
      var counter = 0
      for(vertex <- graph.getVertices){
        counter += 1
        vertex.remove
      }
      transaction.commit
      //info(s"Cleared $counter vertices from the graph $graph")
    }

  /**
   * Prints the graph using the RexsterGraph instance provided
   * @param graph
   */
  def printGraph(graph: ThreadedTransactionalGraph) = {
    val transaction = graph.newTransaction
    // Load everything into memory TODO this has to be dealt otherwise with in bigger DBs
    val vertices  = transaction.getVertices.map(v => Option(v.getProperty("name"))).flatten
    val edges     = transaction.getEdges

    // Print everything
    println("-"*80)
    println("-->> Vertices: ")
    println(vertices)
    //for(vertex <- vertices) println(vertex)
    println("-->> Edges:")
    //println(edges)
    for(edge <- edges) println(edge)
    println("-"*80)
    transaction.commit
  }    
}

