package database

import _root_.util.MeasureFunction
import grizzled.slf4j.Logging
import com.thinkaurelius.titan.core._
import scala.util.control.NonFatal
import scala.util.{Random, Try}
import com.tinkerpop.blueprints._
import com.thinkaurelius.titan.core.attribute.Cmp._
import _root_.util.JuliaTypes.JuliaSignature
import com.tinkerpop.blueprints.util.ElementHelper
import com.thinkaurelius.titan.core.attribute.{Text, Contain, Geoshape}
import scala.collection.JavaConversions._
import com.thinkaurelius.titan.graphdb.query.TitanPredicate
import com.thinkaurelius.titan.core.util.TitanCleanup
import scala.Some
import scala.util.{Failure, Success}
import TitanGraphObject._
import java.util

/**
 * Defines methods to read data from a Titan-Database for an actor. Does not handle the resource, but defines operations
 * on it
 */
trait TitanDbInteractions
  extends DataBaseInteractions
  with    Logging {

  import TitanDatabaseConnection._

  // Reference to the resource
  val graphObject = TitanGraphObject

  // Reference to the available graph
  def graph: Option[TitanGraph] =
    try {
      Some(graphObject.graph)
    } catch {
      case NonFatal(e) =>
        error(s"Could not set up the graph for interactions in TitanDbInteractions line 38, $e")
        None
    }

  def dbToString: String = graph match {
    case Some(graph) =>
      graphObject.graphToString
    case None         =>
      error("Client tried to access offline-db.")
      "DB could not be accessed. Please try again later."
  }

  //~~~~~~~~~~~~~ HELPERS ~~~~~~~~~~~~~~~~
  def findFunctionByName(functionName: String, numResults: Int): String = {
    TitanDatabaseConnection.findFunctionByNameFuzzy(functionName, numResults)
  }

  def findMethodsForFunction(functionName: String, numResults: Int = maxNumResults): String = {
    TitanDatabaseConnection.findMethodsForFunction(functionName, numResults)
  }

  // TODO these need to be implemented
  def find = ???
  def retrieve = ???
  def insertFunction = ???

}


/**
 * Contains methods to interact with TitanDB
 */
object TitanDatabaseConnection extends Logging{

  // defines the namespace for indexing
  final val INDEX_NAME        = "search"
  final val sep               = "§"
  final val maxNumResults     = 1000

  def findFunctionByNameFuzzy(func: String, numResults: Int): String = {
    debug(s"Trying to find functions for the string $func")
    if(func.isEmpty) return "No search term given"
    val n = if(numResults < maxNumResults) numResults else maxNumResults
    val vertices = graph.query.has(FunctionName, com.thinkaurelius.titan.core.attribute.Text.CONTAINS_REGEX, s".*$func.*").vertices.take(n)
    val ans = vertices.collect {
      case v if v.getProperty[String](FunctionName) != null =>
        v.getProperty[String](FunctionName)
    }
    //val aha =  vertices.map(_.getProperty[String](FunctionName)).mkString(sep)
    graph.commit
    ans.mkString(sep)
  }

  def findMethodsForFunction(func: String, numResults: Int): String = {
    debug(s"Getting $numResults methods for function $func")
    val n = if(numResults < maxNumResults) numResults else maxNumResults
    graph.getVertices(FunctionName, func).headOption match {
      case Some(v) =>
        val ans = s"${v.getVertices(Direction.OUT, MethodOf).take(n).map(v => s"$func(${v.getProperty[util.ArrayList[String]](Arguments).mkString(", ")})").mkString(sep)}"
        graph.commit
        ans
      case None =>
        graph.commit
        "not found"
    }
  }

  def getBestImplementation(g: TitanGraph, meth: String): String = {
    val methi = g.getVertices("methodSignature", meth).iterator.next()
    val impls = methi.getVertices(Direction.OUT, "implementationOf").toSeq.sortBy(_.getProperty[String]("rating"))
    impls.last.getProperty[String]("author")
  }

  def getAllImplementations(g: TitanGraph, meth: String): String = {
    val methi = g.getVertices("methodSignature", meth).iterator.next()
    methi.getVertices(Direction.OUT, "implementationOf").map(_.getProperty[String]("author")).mkString("\n")
  }

  def retrieveVertex(graph: TitanGraph, key: String, property: String): Option[Vertex] = {
    println(graph.query.has(key, EQUAL, property).vertices)
    None
  }

  /**
   * First prototype on how to insert a user's code into the database. Will later be the base for all simplyfied
   * insertions. This function carries all the parameters.
   * @param source
   * @param args
   * @return
   */
  def insertSourceCode(source: String, funcName: String, args: List[String], author: String,
                       docs: String, newImplementation: Boolean = false, newVersion: Boolean = false): Vertex = {
    // First instantiate the vertex with the provided data
    info("Started to insert a new implementation into the graph")

    val functionNode = graph.query.has(TopLevelName, "functions").vertices.head

    try {
      val timestamp = System.currentTimeMillis: java.lang.Long // Timestamp all changes with the same time

      // Try to find the function in the graph with the same name, if not create a new function vertex
      info("Setting up the functionVertex")
      val functionVertex = graph.query.has(FunctionName, funcName).vertices.headOption match {
        case Some(vertex) =>
          info(s"Found the function ${vertex.getProperty[String](FunctionName)} in the graph, will use it.")
          vertex
        case None => {// go on and create the vertex for the function and link it
          info(s"Did not find the function $funcName, will create the vertex for it.")
          val newFunctionVertex = graph.addVertexWithLabel(Function)
          ElementHelper.setProperties(newFunctionVertex, FunctionName, funcName, Documentation, docs, TimeStamp, timestamp)
          val functionEdge = graph.addEdge(null, functionNode, newFunctionVertex, IsFunction)
          ElementHelper.setProperties(functionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
          info("Created the new function")
          newFunctionVertex
        }
      }

      // Decide if there exists a method with the provided arguments, if not create the method vertex
      info("Setting up the methodVertex")
      //var vertex: Vertex = null
      val methodOption = functionVertex.getEdges(Direction.OUT, MethodOf).collect{
        case e: Edge if (args == e.getVertex(Direction.IN).getProperty[java.util.ArrayList[String]](Arguments).toList)
          => e.getVertex(Direction.IN)
      }.headOption

      val methodVertex = methodOption match {
        case Some(v) =>{
          info(s"Found the method $funcName(${args.mkString(",")}) in the graph, will use it.")
          v
        }
        case None => {
          info(s"Did not find the method $funcName(${args.mkString(",")}), will create the vertex for it.")
          val newMethodVertex = graph.addVertexWithLabel(Method)
          ElementHelper.setProperties(newMethodVertex, Documentation, docs, TimeStamp, timestamp)
          args.foreach(newMethodVertex.addProperty(Arguments, _))
          val methodEdge = graph.addEdge(null, functionVertex, newMethodVertex, MethodOf)
          ElementHelper.setProperties(methodEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
          info("Created the new method.")
          newMethodVertex
        }
      }

      // Now link the vertex in the graph and create the edges necessary
      // If no new implementation is desired by the author, search for nodes which are from the author
      info("Setting up the implementation vertex.")
      val implementationVertex = if (newImplementation) {
        info("The user wanted to create a new implementation, now creating it.")
        val newImplementationVertex = graph.addVertexWithLabel(Implementation)
        ElementHelper.setProperties(newImplementationVertex, Author, author, Documentation, docs, TimeStamp, timestamp)
        val implementationEdge = graph.addEdge(null, methodVertex, newImplementationVertex, ImplementationOf)
        ElementHelper.setProperties(implementationEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
        info("done setting up the new implementation vertex")
        newImplementationVertex
      } else {
        val implementationOption = methodVertex.getEdges(Direction.OUT, ImplementationOf).collect {
          case e: Edge if (author == e.getVertex(Direction.IN).getProperty[String](Author)) => e.getVertex(Direction.IN)
        }.headOption
        implementationOption match {
          case Some(vertex) =>
            info(s"Retrieved the prior implementation from author $author, will use it.")
            vertex
          case None =>
            info(s"No prior implementation found for author $author, will now generate it.")
            val newImplementationVertex= graph.addVertexWithLabel(Implementation)
            ElementHelper.setProperties(newImplementationVertex, Author, author, Documentation, docs, TimeStamp, timestamp)
            val implementationEdge = graph.addEdge(null, methodVertex, newImplementationVertex, ImplementationOf)
            ElementHelper.setProperties(implementationEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
            info("Created the new implementation vertex.")
            newImplementationVertex
        }
      }

      // If no new version is desired delete the old version
      val newVers = if(newVersion) {
        info("User wanted to create a new version for the implementation. Creating the new one now.")
        val versionVertex = graph.addVertexWithLabel("version")
        ElementHelper.setProperties(versionVertex, Code, source, Author, author, Documentation, docs, TimeStamp, timestamp)
        args.foreach(versionVertex.addProperty(Arguments, _))
        val versionEdge = graph.addEdge(null, implementationVertex, versionVertex, VersionOf)
        ElementHelper.setProperties(versionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
        info("Done creating the new version")
        versionVertex
      } else {
        info("User wants to overwrite latest version.")
        // find most recent version
        implementationVertex.getEdges(Direction.OUT, VersionOf).toList.sortBy(_.getVertex(Direction.IN).
          getProperty[Long](TimeStamp)).headOption match {
          case Some(e) => {
            info("Found older verion, will override old values")
            val v = e.getVertex(Direction.IN)
            v.setProperty(TimeStamp, timestamp)
            v.setProperty(Code, source)
            v.setProperty(Documentation, docs)
            info("Done overwriting the old values.")
            v
          }
          case None => {
            info("There were no versions of the implementation, will now create the initial one.")
            val versionVertex = graph.addVertexWithLabel("version")
            ElementHelper.setProperties(versionVertex, Code, source, Author, author, Documentation, docs, TimeStamp, timestamp)
            args.foreach(versionVertex.addProperty(Arguments, _))
            info("Adding the final edges for the insertion.")
            val versionEdge = graph.addEdge(null, implementationVertex, versionVertex, VersionOf)
            ElementHelper.setProperties(versionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
            info("Done creating the initial version.")
            versionVertex
          }
        }
      }

      graph.commit()
      info("Insertion of data was successful")
      newVers

    } catch {
      case NonFatal(ex) =>
        warn(s"Could not insert the vertex into the database, $ex")
        graph.rollback
        throw ex
    }
  }


  /**
   * Removes a whole function with ALL the vertices under it
   * @param functionName The name of the function to delete
   * @return A String containig the message about the success of the operation
   */
  def removeFunction(functionName: String): String = {
    info(s"Trying to remove the function $functionName from the graph")
    val start = System.currentTimeMillis
    val g = graph
    try {
      val functionVertex = g.query.has(FunctionName, functionName).vertices.headOption match {
        case Some(v) =>
          v
        case None =>
          return "The function was not in the graph, cannot do anything."
      }
      // Remove everything under the function and count what was deleted
      val methods = functionVertex.getVertices(Direction.OUT, MethodOf)
      var removedMethods          = 0
      var removedImplementations  = 0
      var removedVersions         = 0
      for(m <- methods) {
        removeMethod(m) match {
          case (true, rImpl, rVers) => {
            removedMethods          += 1
            removedImplementations  += rImpl
            removedVersions         += rVers
          }
          case (false, rImpl, rVers) => {
            removedMethods          += 1
            removedImplementations  += rImpl
            removedVersions         += rVers
          }
        }
      }

      // Remove the functionVertex itself
      functionVertex.getEdges(Direction.OUT).foreach(g.removeEdge(_))
      g.removeVertex(functionVertex)

      info(s"Successfully removed the function $functionName  with $removedMethods method(s), $removedImplementations " +
        s"implementation(s) and $removedVersions version(s) in ${System.currentTimeMillis - start} ms from the graph.")
      g.commit
      s"Removed the function $functionName"
    } catch {
      case NonFatal(ex) =>
        g.rollback
        "There was an error during removal of the function no changes commited."
    }
  }

  /**
   * Safely removes a method from the graph
   * @param v The method to delete
   * @return Returns if the operation was successful and the number of removed implementations and versions
   */
  def removeMethod(v:Vertex): (Boolean, Int, Int) = {
    assert(v.getProperty[String]("label") == Method)
    try {
      var removedImplementations = 0
      var removedVersions = 0
      for (e <- v.getEdges(Direction.IN)){
        graph.removeEdge(e)
      }
      // Remove all Versions first
      for (e <- v.getEdges(Direction.OUT, ImplementationOf)){
        removeImplementation(e.getVertex(Direction.IN)) match {
          case (true, removed)  => {
            removedImplementations += 1
            removedVersions += removed
          }
          case (false, removed) => {
            removedImplementations += removed
            return (false, removedImplementations, removedVersions)
          }
        }
      }
      // Then remove the node with its connections
      graph.removeVertex(v)
      graph.commit
      return (true, removedImplementations, removedVersions)
    }
  }

  /**
   * Safely removes an implementation from the graph
   * @param v The implementation vertex reference
   * @return Returns if the operation was sucessful and the number of removed versions
   */
  def removeImplementation(v: Vertex): (Boolean, Int) = {
    assert(v.getProperty[String]("label") == Implementation)
    try {
      var removedVersions = 0
      for (e <- v.getEdges(Direction.IN)){
        graph.removeEdge(e)
      }
      // Remove all Versions first
      for (e <- v.getEdges(Direction.OUT, VersionOf)){
        removeVersion(e.getVertex(Direction.IN)) match {
          case true  => removedVersions += 1
          case false => return (false, removedVersions)
        }
      }
      // Then remove the node with its connections
      graph.removeVertex(v)
      graph.commit
      return (true, removedVersions)
    }
  }

  /**
   * Safely removes a vertex from the graph
   * @param v The vertex reference to remove
   * @return True if operation was successful, else false
   */
  def removeVersion(v: Vertex): Boolean = {
    assert(v.getProperty[String]("label") == Version)
    try{
      for (e <- v.getEdges(Direction.IN)){
        graph.removeEdge(e)
      }
      graph.removeVertex(v)
      graph.commit
      true
    } catch {
      case NonFatal(ex) =>
        graph.rollback
        warn(s"Could not delete version vertex $v due to $ex")
        false
    }
  }

  /**
   * Inserts a node into the given graph with the given properties
   * TODO might be obsolete
   * @param graph
   * @param props
   */
  def addVertex(graph: TitanGraph, props: Map[String, AnyRef]): Unit = {
    val node = graph.addVertexWithLabel("kaese")
    for{
      prop <- props
    }(node.setProperty(prop._1, prop._2))
  }


  /**
   * Generates the identifier for the element in the database. Should be timestamped and contain basic information
   * about the type of element used. TODO this is just prototyping
   */
  def generateID(elemType: String): String = {
    elemType + ":" + System.currentTimeMillis.toString
  }
}
