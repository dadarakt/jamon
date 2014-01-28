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



object Main extends Logging{

  // Constants
//  val App     = "rexster"
  val Address = "localhost"
  val Port    = 8184
  val GraphName = "graph"

  def main(args: Array[String]){

    // Setup configuration for the graph we want
    val clientConfig = new BaseConfiguration {
      setProperty("storage.backend", "cassandra")
      setProperty("storage.hostname", "localhost")
      setProperty("storage.directory" ,"/tmp/titan")
      addProperty(RexsterClientTokens.CONFIG_MESSAGE_RETRY_COUNT, 16)
      addProperty(RexsterClientTokens.CONFIG_MESSAGE_RETRY_WAIT_MS, 50)
      addProperty(RexsterClientTokens.CONFIG_HOSTNAME, Address)
      addProperty(RexsterClientTokens.CONFIG_PORT, Port)
    }



    // Check if the graph does already exist
//    val graph = Try(new RexsterGraph("http://localhost:8182/graphs/graph"))
    val client = RexsterClientFactory.open(clientConfig)
    //client.execute("""g = GraphOfTheGodsFactory.create('/tmp/titan') """)

    // Another try using the things directly now
    //val g: TitanGraph = TitanFactory.open(clientConfig)
    //if(g.isOpen) println("Dat is offen") else println("naeh")




//    graph match {
//      case Success(g) => {
//        println("Here is the graph")
//        //printDatabase(g)
//      }
//      case _  => println("We could not find the graph, my lord.")
//    }



//    val g: TitanGraph = TitanFactory.open

    // using the configuration to make sessionless requests to the database
    // TODO one problem is that the client does not operate asynchronously which will be a problem in a web-based
    // application. Is there a fast and easy way to write such a client or does this really hinder me progressing
    // with this task. We'll see about that.
//    val client = RexsterClientFactory.open(clientConfig)
    // A rexpro connection
    //val graph = new RexsterGraph("http://localhost:8182/graphs/graph")

    // Create a new graph from scratch
    // Check if there is a database in this session via the temproray file
//    val file = new File("test")
//    if(!file.isFile){
//      client.execute("")
//    }
//    printDatabase(client)
    //printDatabase(graph)
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
