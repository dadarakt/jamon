package database

/**
 * Created by jannis on 1/14/14.
 * This might be the entry point to the system but let's see.
 */

import com.tinkerpop.rexster.client.RexsterClientFactory
import com.tinkerpop.rexster.client.RexsterClient
import scala.collection.JavaConversions._
import grizzled.slf4j.Logging
import com.tinkerpop.blueprints.impls.rexster.RexsterGraph // next try for the rexpro version



object Main extends Logging{
  def main(args: Array[String]){
    val graph = new RexsterGraph("http://localhost:40002/graphs/gratefulgraph")
    printDatabase(graph)
//    // See what we got
//    val client = RexsterClientFactory.open("localhost", 40004, "gratefulgraph")
//    printDatabase(client)
//
//    // Remove everything and see if that worked
//    clearDatabase(client)
//    printDatabase(client)
//
//    // Add things and see what happenend
//    addThingsToDatabase(client)
//    printDatabase(client)
  }


  /**
   * Removes everything in the database !
   */
  def clearDatabase(client: RexsterClient) = {

  }

  /**
   * Adds some things to the database
   */
  def addThingsToDatabase(client: RexsterClient) = {

  }

  /**
   * Prints some kind of traversing over the database
   */
  def printDatabase(client: RexsterClient) = {
    val vertices: Seq[String] = client.execute("g.V.name").toSeq
    val edges: Seq[String] = client.execute("g.E.name").toSeq

    println("-"*80)
    println("-->> Vertices: ")
    for(vertex <- vertices) println(vertex)
    println("-->> Edges:")
    for(edge <- edges) println(edge)
    println("-"*80)
  }


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
