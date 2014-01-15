package database

/**
 * Created by jannis on 1/14/14.
 * This might be the entry point to the system but let's see.
 */

import com.tinkerpop.rexster.client.RexsterClientFactory
import scala.collection.JavaConversions._
import grizzled.slf4j.Logging

object Main extends Logging{
  def main(args: Array[String]){
    println("Now here we go!")

    val client = RexsterClientFactory.open("localhost", "graph")

    val names: Seq[String] = client.execute("g.V.name").toSeq
    debug("%d names: %s" format (names.size, names.mkString("[", ",", "]")))

    val simonLikes: Seq[String] =
      client.execute("g.V('name',name).out('likes').name", Map("name" -> "Simon")).toSeq
  }


  /**
   * Sets up a test instance of the database locally.
   */
  def setupDatabase = {

  }

  /**
   * Adds a string in the database to see what happens
   * @param s The string to be entered into the database
   */
  def addStringToDatabase(s: String) = {

  }

  /**
   * Prints some kind of traversing over the database
   */
  def printDatabase = {

  }
}
