package database

/**
 * Created by jannis on 1/14/14.
 * This might be the entry point to the system but let's see.
 */

import com.tinkerpop.rexster.client.{RexsterClientFactory, RexsterClientTokens, RexsterClient}
import scala.collection.JavaConversions._
import grizzled.slf4j.Logging
import com.tinkerpop.blueprints.impls.rexster.RexsterGraph
import org.apache.commons.configuration.BaseConfiguration
import scala.util.{Success, Try}
import com.thinkaurelius.titan.core.{TitanGraph, TitanFactory}
import com.tinkerpop.blueprints.{Edge, Vertex}
import scala.util.control.NonFatal


object Main extends Logging{

  // Constants
//  val App     = "rexster"
  val GraphName = "graph"

  def main(args: Array[String]){

    // Setup configuration for the graph we want
    val conf = new BaseConfiguration {
      setProperty("storage.backend", "cassandra")
      setProperty("storage.hostname", "127.0.0.1")
      setProperty("storage.directory" ,"/tmp/titan")
    }

    // This should make the graph instance I wanna have
    val g: TitanGraph = try {
      TitanFactory.open(conf)
    } catch{
      case NonFatal(e) => {
        println("Error while accessing database, Cassandra seems to be down.!", e)
        return // Just get out of here for now
      }
    }

    println("////////////////////// Try to get all vertices: /////////////////////////////")
    // First clear this shit out
    for(vertex <- g.getVertices) {
      println("-->" + vertex.getProperty("name"))
      //g.removeVertex(vertex)
    }
    g.commit

    println("/////????///////////////////////////////////")


    // Configure the index over the names
    //g.createKeyIndex("name", classOf[Vertex])
    println(g.isOpen)
    val juno: Vertex = g.addVertex(null)
    juno.setProperty("name", "juno")
    val jupiter: Vertex = g.addVertex(null)
    jupiter.setProperty("name", "jupiter")
    val married: Edge = g.addEdge(null, juno, jupiter,"married")

    val wurst = g.addVertex(null)
    wurst.setProperty("name", "wurst")

    g.commit
  }

  def openGraph(address: String): Try[RexsterGraph] = Try(new RexsterGraph("http://localhost:8182/graphs/graph"))

  /**
   * This methods creates a new graph in titan after receiving the needed configuration
   */
  def createNewGraph(conf: BaseConfiguration) = {
    // First test if the graph already exists

  }


  /**
   * Removes everything in the database ! TODO is this even supported or does this operation not make any sense?
   * We'll see about that, I guess. What else is there to say now? hmmmmmm. I'll leave it here for the moment.
   */
  def clearDatabase(client: RexsterClient) = {

  }

  /**
   * Adds some things to the database
   */
  def addThingsToDatabase(client: RexsterClient) = {

  }

  /**
   * Prints the database using the provided client
   */
  def printDatabase(client: RexsterClient) = {

    // TODO there is a problem that scala DOES not know the return type at compile-time. This should be fixed using
    // something like a thin wrapper or adapter for scala. Do this as soon as possible to enable nice typesafe
    // coding in the framework. Aber so ganz hab ich das noch nicht verstanden.
    val vertices: Seq[String] = client.execute("g.V.name").toSeq
    val edges: Seq[String] = client.execute("g.E.name").toSeq

    println("-"*80)
    println("-->> Vertices: ")
    for(vertex <- vertices) println(vertex)
    println("-->> Edges:")
    for(edge <- edges) println(edge)
    println("-"*80)
  }

  /**
   * Prints the graph using the RexsterGraph instance provided
   * @param graph
   */
  def printDatabase(graph: RexsterGraph) = {
    // Load everything into memory TODO this has to be dealt otherwise with in bigger DBs
    val vertices  = graph.getVertices.map(v => Option(v.getProperty("name"))).flatten
    val edges     = graph.getEdges

    // Print everything
    println("-"*80)
    println("-->> Vertices: ")
    println(vertices)
    //for(vertex <- vertices) println(vertex)
    println("-->> Edges:")
    //println(edges)
    for(edge <- edges) println(edge)
    println("-"*80)
  }


}
