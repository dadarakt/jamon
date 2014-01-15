package database

/**
 * Created by jannis on 1/14/14.
 * This might be the entry point to the system but let's see.
 */

import com.tinkerpop.rexster.client.RexsterClientFactory
import com.tinkerpop.rexster.client.RexsterClient
import scala.collection.JavaConversions._
import grizzled.slf4j.Logging

object Main extends Logging{
  def main(args: Array[String]){
    println("Now here we go!")

    val client = RexsterClientFactory.open("localhost", "graph")

//    val names: Seq[String] = client.execute("g.V.name").toSeq
//    debug("%d names: %s" format (names.size, names.mkString("[", ",", "]")))
//
//    val simonLikes: Seq[String] =
//      client.execute("g.V('name',name).out('likes').name", Map("name" -> "Simon")).toSeq
    printDatabase(client)
  }


  /**
   * Sets up a test instance of the database locally.
   */
  def setupDatabase = {

  }

  /**
   * Adds a string in the database to see what happens
   */
  def addStringToDatabase(name: String, likes: Seq[(String, String)]) = {

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


}
