package database

import _root_.utils.MeasureFunction
import grizzled.slf4j.Logging
import com.thinkaurelius.titan.core._
import scala.util.control.NonFatal
import com.tinkerpop.blueprints._
import com.tinkerpop.blueprints.util.ElementHelper
import scala.collection.JavaConversions._
import scala.Some
import TitanGraphObject._
import java.util
import com.thinkaurelius.titan.core.attribute.Text._
import MeasureFunction._
import utils.JuliaTypes.{JuliaArgument, JuliaSignature}
import spray.json._
import DefaultJsonProtocol._
import DatabaseJsonProtocols._

/**
 * Defines methods to read data from a Titan-Database for an actor. Does not handle the resource, but defines operations
 * on it
 */
trait TitanDbInteractions
  extends DbInteractions
  with    Logging {

  import TitanDatabaseConnection._

  // Reference to the resource
  val graphObject = TitanGraphObject

  // Reference to the available graph
  def graph: Option[TitanGraph] = {
    try {
      Some(graphObject.graph)
    } catch {
      case NonFatal(e) =>
        error(s"Could not set up the graph for interactions in TitanDbInteractions line 38, $e")
        None
    }
  }

  def dbToString: String = graph match {
    case Some(graph) =>
      graphObject.graphToString
    case None         =>
      error("Client tried to access offline-db.")
      "DB could not be accessed. Please try again later."
  }

  def findFunctionByName(functionName: String, numResults: Int): List[String] = {
    TitanDatabaseConnection.findFunctionByNameFuzzy(functionName, numResults)
  }

  def findMethodsForFunction(functionName: String, numResults: Int): List[MethodReturn] = {
    TitanDatabaseConnection.findMethodsForFunction(functionName, numResults)
  }

  def getBestImplementationForMethod(methodName: String): String = {
    val funcName = methodName.takeWhile(_ != '(')
    val args = methodName.drop(funcName.length + 1).dropRight(1).split(',').map(_.trim).toList
    TitanDatabaseConnection.getBestImplementation(funcName, args)
  }

//  def insertSourceCode(source: String, funcName: String, sig: JuliaSignature, author: String,
//                       docs: String, newImpl: Boolean = false, newVers: Boolean = false) = {
//    val vertex  = TitanDatabaseConnection.insertSourceCode(source, sig, author, docs, newImpl, newVers)
//    s"Inserted the data into vertex $vertex"
//  }
  
  def insertSourceCode(r: InsertionRequest): String = {
    //val vertex = TitanDatabaseConnection.insertSourceCode(r.code, r.funcName, r.args, r.author, r.docs, r.newImpl, r.newVers)
    val vertex = "wurst"
    s"Inserted the data into vertex $vertex"
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

  def findFunctionByNameFuzzy(func: String, numResults: Int): List[String] = {
    val start = System.currentTimeMillis
    debug(s"Trying to find functions for the string $func")

    // Make sure to get useful input
    if(func.isEmpty) return List[String]()
    val n = if(numResults < maxNumResults) numResults else maxNumResults

    // Retrieve all vertices and get the fully qualified function names
    try {
      val (vertices, retrieveTime)  = measureCallWithResult(graph.query.has(FunctionName, CONTAINS_REGEX, s".*$func.*").vertices.view)
      val (results, toListTime)     = measureCallWithResult(vertices.view.take(n).map(_.getProperty[String](FunctionName)).toList)
      graph.commit
      info(s"Search for $func took ${System.currentTimeMillis - start} ms in total. Retrieval: $retrieveTime, Processing: $toListTime $results")
      results
    } catch {
        case NonFatal(ex) => warn(s"There was an error while searching for the function name: $func")
        graph.rollback
        error(s"Error during retrieval, $ex")
        List()
    }
  }


  def findMethodsForFunction(func: String, numResults: Int): List[MethodReturn] = {
    val start = System.currentTimeMillis
    debug(s"Getting $numResults methods for function $func")
    val n = if(numResults < maxNumResults) numResults else maxNumResults
    graph.getVertices(FunctionName, func).headOption match {
      case Some(v) =>
        val ans = v.getVertices(Direction.OUT, MethodOf).
          take(n).map(v => MethodReturn(s"$func(${v.getProperty[util.ArrayList[String]](Arguments).mkString(", ")})",
                                        v.getId.toString.toInt))
        graph.commit
        info(s"Retrieval of the methods for function $func took ${System.currentTimeMillis - start} ms")
        ans.toList
      case None =>
        graph.commit
        List()
    }
  }


  def getBestImplementation(funcName: String, args: List[String]): String = {
    functionOption(funcName) match {
      case Some(v) => {
        methodOptionforFunction(v, args) match {
          case Some(v) => {
            getMostRecentImplementation(v) match {
              case Some(v) =>
                getMostRecentVersionForImplementation(v) match {
                  case Some(v) => {
                    v.getProperty[String](Code)
                  }
                  case None => {
                    warn("Method $funcName(${args.mkString(\", \")} has an implementation without any versions!")
                    s"No version found for the most recent "
                  }
                }
              case None =>
                s"No implementations found for method $funcName(${args.mkString(", ")})"
            }
          }
          case None => {
            s"No method with args ${args.mkString(", ")} found for function $funcName"
          }
        }
      }
      case None => {
        s"No function called '$funcName' in the graph."
      }
    }
  }


  def getAllImplementations(g: TitanGraph, meth: String): String = {
    val methi = g.getVertices("methodSignature", meth).iterator.next()
    val ans = methi.getVertices(Direction.OUT, "implementationOf").map(v => (v.getProperty[String]("author"))).mkString("\n")
    graph.commit
    ans
  }

  def functionOption(funcName: String): Option[Vertex] = {
    val ans = graph.query.has(FunctionName, funcName).vertices.headOption
    graph.commit
    ans
  }


  def methodOptionforFunction(function: Vertex, args: List[String]): Option[Vertex] = {
    val ans = function.getVertices(Direction.OUT, MethodOf).collect {
      case v: Vertex if (args.toList == v.getProperty[java.util.ArrayList[String]](Arguments).toList) => v
    }.headOption
    graph.commit
    ans
  }

  def getMostRecentImplementation(method: Vertex): Option[Vertex] = {
    val ans =  method.getVertices(Direction.OUT, ImplementationOf).toList.sortBy(- _.getProperty[Long](TimeStamp)).headOption
    graph.commit
    ans
  }

  def getMostRecentVersionForImplementation(implementation: Vertex): Option[Vertex] = {
    val ans = implementation.getVertices(Direction.OUT, VersionOf).toList.sortBy(- _.getProperty[Long](TimeStamp)).headOption
    graph.commit
    ans
  }


  /**
   * First prototype on how to insert a user's code into the database. Will later be the base for all simplyfied
   * insertions. This function carries all the parameters.
   * @param source
   * @param sig The signature which holds all the information regarding parameters
   * @return
   */
  def insertSourceCode(source: String, sig: JuliaSignature, author: String,
                       docs: String, newImplementation: Boolean = false, newVersion: Boolean = false): Option[Vertex] = {
    // First instantiate the vertex with the provided data
    println(s"$author started to insert a new implementation into the graph")

    val functionNode = graph.query.has(TopLevelName, "functions").vertices.head

    try {
      val timestamp = System.currentTimeMillis: java.lang.Long // Timestamp all changes with the same time

      // Try to find the function in the graph with the same name, if not create a new function vertex
      debug("Setting up the functionVertex")
      val functionVertex = graph.query.has(FunctionName, sig.name).vertices.headOption match {
        case Some(vertex) =>
          println(s"Found the function ${vertex.getProperty[String](FunctionName)} in the graph, will use it.")
          vertex
        case None => {// go on and create the vertex for the function and link it
          println(s"Did not find the function ${sig.name}, will create the vertex for it.")
          val newFunctionVertex = graph.addVertexWithLabel(Function)
          ElementHelper.setProperties(newFunctionVertex, FunctionName, sig.name, Documentation, docs, TimeStamp, timestamp)
          val functionEdge = graph.addEdge(null, functionNode, newFunctionVertex, IsFunction)
          ElementHelper.setProperties(functionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
          debug("Created the new function")
          newFunctionVertex
        }
      }

      val signatures = expandSignature(sig)



      // Decide if there exists a method with the provided arguments, if not create the method vertex
      debug("Setting up the methodVertex")
      //var vertex: Vertex = null
      val methodOption = functionVertex.getVertices(Direction.OUT, MethodOf).collect{
        case v: Vertex if (sig.signatureString == v.getProperty[String](SignatureString)) => v
      }.headOption

      val methodVertex = methodOption match {
        case Some(v) =>{
          println(s"Found the method $sig in the graph, will use it.")
          v
        }
        case None => {
          println(s"Did not find the method $sig, will create the vertex for it.")
          val newMethodVertex = graph.addVertexWithLabel(Method)
          ElementHelper.setProperties(newMethodVertex, Documentation, docs, SignatureString, sig.signatureString,
                                                       Signature, sig.toJson.compactPrint, TimeStamp, timestamp)
          val methodEdge = graph.addEdge(null, functionVertex, newMethodVertex, MethodOf)
          ElementHelper.setProperties(methodEdge, TimeStamp, timestamp, SignatureString, sig.signatureString,
                                                  Weighting, InitialWeighting)
          debug("Created the new method.")
          newMethodVertex
        }
      }

      // Now link the vertex in the graph and create the edges necessary
      // If no new implementation is desired by the author, search for nodes which are from the author
      debug("Setting up the implementation vertex.")
      val implementationVertex = if (newImplementation) {
        println("The user wanted to create a new implementation, now creating it.")
        val newImplementationVertex = graph.addVertexWithLabel(Implementation)
        ElementHelper.setProperties(newImplementationVertex, Author, author, Documentation, docs, TimeStamp, timestamp)
        val implementationEdge = graph.addEdge(null, methodVertex, newImplementationVertex, ImplementationOf)
        ElementHelper.setProperties(implementationEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
        debug("done setting up the new implementation vertex")
        newImplementationVertex
      } else {
        val implementationOption = methodVertex.getEdges(Direction.OUT, ImplementationOf).collect {
          case e: Edge if (author == e.getVertex(Direction.IN).getProperty[String](Author)) => e.getVertex(Direction.IN)
        }.headOption
        implementationOption match {
          case Some(vertex) =>
            println(s"Retrieved the prior implementation from author $author, will use it.")
            vertex.setProperty(TimeStamp, timestamp)
            vertex
          case None =>
            println(s"No prior implementation found for author $author, will now generate it.")
            val newImplementationVertex= graph.addVertexWithLabel(Implementation)
            ElementHelper.setProperties(newImplementationVertex, Author, author, Documentation, docs, TimeStamp, timestamp)
            val implementationEdge = graph.addEdge(null, methodVertex, newImplementationVertex, ImplementationOf)
            ElementHelper.setProperties(implementationEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
            debug("Created the new implementation vertex.")
            newImplementationVertex
        }
      }

      // If no new version is desired delete the old version
      val newVers = if(newVersion) {
        println("User wanted to create a new version for the implementation. Creating the new one now.")
        val versionVertex = graph.addVertexWithLabel("version")
        ElementHelper.setProperties(versionVertex, Code, source, Author, author, SignatureString, sig.signatureString,
                                                   Documentation, docs, TimeStamp, timestamp)
        val versionEdge = graph.addEdge(null, implementationVertex, versionVertex, VersionOf)
        ElementHelper.setProperties(versionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
        debug("Done creating the new version")
        versionVertex
      } else {
        println("User wants to overwrite latest version.")
        // find most recent version
        implementationVertex.getEdges(Direction.OUT, VersionOf).toList.sortBy(_.getVertex(Direction.IN).
          getProperty[Long](TimeStamp)).headOption match {
          case Some(e) => {
            println("Found older verion, will override old values")
            val v = e.getVertex(Direction.IN)
            v.setProperty(TimeStamp, timestamp)
            v.setProperty(Code, source)
            v.setProperty(Documentation, docs)
            debug("Done overwriting the old values.")
            v
          }
          case None => {
            println("There were no versions of the implementation, will now create the initial one.")
            val versionVertex = graph.addVertexWithLabel("version")
            ElementHelper.setProperties(versionVertex, Code, source, Author, author,
                                        SignatureString, sig.signatureString, Documentation, docs, TimeStamp, timestamp)
            debug("Adding the final edges for the insertion.")
            val versionEdge = graph.addEdge(null, implementationVertex, versionVertex, VersionOf)
            ElementHelper.setProperties(versionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
            debug("Done creating the initial version.")
            versionVertex
          }
        }
      }
      graph.commit
      println("Insertion of data was successful")
      Some(newVers)
    } catch {
      case NonFatal(ex) =>
        println(s"Could not insert the vertex into the database, $ex")
        graph.rollback
        None
    }
  }

  /**
   * Expands the signature to all the methods it has. Since default values technically constitute a new function
   * this has to be done to update all methods with the given signature.
   * @param sig The complete signature
   * @return a list of all expanded signatures
   */
  def expandSignature(sig: JuliaSignature): List[JuliaSignature] = {
    val nodefaults  = sig.arguments.filter(_.default == None)
    val defaults    = sig.arguments.filter(_.default.isDefined).map(a => JuliaArgument(a.name, a.typ, None))
    val perms = defaults.zipWithIndex.map{case (arg: JuliaArgument, index: Int) =>
      JuliaSignature(sig.name, nodefaults ::: defaults.take(index+1), None)}

    List(JuliaSignature(sig.name, nodefaults, None))  :::
      perms.dropRight(1)                              :::
      List(JuliaSignature(sig.name, nodefaults ::: defaults, sig.varargs))
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
