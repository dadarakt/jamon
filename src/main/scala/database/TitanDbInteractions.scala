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
  val graph: Option[TitanGraph] =
    try {
      Some(graphObject.graph)
    } catch {
      case NonFatal(e) =>
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
  def insertFunctionNode(graph: TitanGraph, props: Seq[String]) = {

  }

  def getMethods(function: String): String = {
    getMethodsForFunction(graph.get, function)
  }

  def getBestImplementation(meth: String): String = {
    TitanDatabaseConnection.getBestImplementation(graph.get, meth)
  }

  def getAllImplementations(meth: String): String = {
    TitanDatabaseConnection.getAllImplementations(graph.get, meth)
  }

  def findFunction(name: String)= {

  }

  def insertFunction: String = {
    val g = graph.get
    try {
      val g = graph.get
      val length = g.getVertices("iid", "func:1").iterator().next

      val meth1 = g.addVertex(null)
      ElementHelper.setProperties(meth1, "type" , "meth", "iid" ,"meth:3", "methodSignature" ,"length(Matrix)", "methodFor" ,"func:1")
      val impl1 = g.addVertex(null)
      ElementHelper.setProperties(impl1, "type", "impl", "iid" , "impl:3", "implements", "meth:3", "author", "jannis", "rating", "0")
      val vers1 = g.addVertex(null)
      ElementHelper.setProperties(vers1, "type", "vers", "iid", "vers:3", "versOf", "impl:3", "code", "Hier rechne ich mit Matrizen.", "time" , "1234567")

      // Add the edges that we want
      g.addEdge(null, length, meth1, "methodOf")
      g.addEdge(null, meth1, impl1, "implementationOf")
      g.addEdge(null, impl1, vers1, "versionOf")

      g.commit
      "Succesfully entered your new code! You should print the graph to observe changes."
    } catch {
      case NonFatal(e) =>
        g.rollback
        "Failed while entering data. " + e
    }
  }

  def insertDummyData: String = {
    TitanDatabaseConnection.insertDummyData(graph.get, 10)
  }

  // TODO these need to be implemented
  def getImplementation(name: String): String = ???
  def getFunction(signature: JuliaSignature) = ???
  def find = ???
  def retrieve = ???
  def getMethod(signature: JuliaSignature) = ???
}


/**
 * Contains methods to interact with TitanDB
 */
object TitanDatabaseConnection extends Logging{

  // defines the namespace for indexing
  val INDEX_NAME = "search"

  /**
   * Just demoing things
   * @param g
   */
  def addSomeShit(g: TitanGraph) = {
    insertNode(g, Map(("type" -> "meth"), ("iid" -> "meth:1"), ("methodSignature" -> "length(String)")))
  }

  /**
   * Returns the method (headers) for a function
   * @param func
   */
  def getMethodsForFunction(g: TitanGraph, func: String): String = {
    val fun = g.getVertices("functionName", func).iterator.next()
    val meths = fun.getVertices(Direction.OUT, "methodOf").map(_.getProperty[String]("methodSignature"))
    meths.mkString("\n")
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


  /**
   * Returns a vertex with the given property to the key from the graph
   */
  def retrieveVertex(graph: TitanGraph, key: String, property: String): Option[Vertex] = {
    println(graph.query.has(key, EQUAL, property).vertices)
    None
  }


  /**
   * Opens a graph using the directory.
   */
  def openGraphFromDir(dir: String): Try[TitanGraph] = {
    val graph = TitanFactory.open(dir)
    if(graph.isOpen){
      info(s"Database $dir has been openend successfully")
      Success(graph)
    } else {
      error("Could not access graph, will create the graph now.")
      Failure(new NoSuchElementException(s"Could not open the given graph at dir $dir"))
    }
  }

//  def insertInititalData(graph: TitanGraph) = {
//    // ----- Insert initial data -----
//    // helpers
//    val topLevel        = "topLevel"
//    val function        = "function"
//    val method          = "method"
//    val implementation  = "implementation"
//    val version         = "version"
//
//    // Retrieve the functions node
//    val functions = graph.query.has("topLevelName", "functions").vertices.head
//
//    // TODO the following insertions are only for demonstration
//    // add some dummy functions in the database
//    info("\t -> Adding dummy data into the graph")
//    val length = graph.addVertexWithLabel(function)
//    ElementHelper.setProperties(length,"functionName", "length", "iid", "func:1")
//    val length2 = graph.addVertexWithLabel("function")
//    ElementHelper.setProperties(length2, "functionName", "length2", "iid", "func:2" )
//    // add some dummy methods in the datbase
//    val meth1 = graph.addVertexWithLabel(method)
//    ElementHelper.setProperties(meth1, "iid" ,"meth:1", "methodSignature" ,"length(String)", "methodFor" ,"func:1")
//    val meth2 = graph.addVertexWithLabel(method)
//    ElementHelper.setProperties(meth2, "iid" ,"meth:2", "methodSignature" ,"length(Array)", "methodFor" ,"func:1")
//    val impl1 = graph.addVertexWithLabel(implementation)
//    ElementHelper.setProperties(impl1, "iid" , "impl:1", "implements", "meth:1", "author", "simon", "rating", "8")
//    val impl2 = graph.addVertexWithLabel(implementation)
//    ElementHelper.setProperties(impl2,  "iid" , "impl:2", "implements", "meth:1", "author", "jannis", "rating", "2")
//    val vers1 = graph.addVertexWithLabel(version)
//    ElementHelper.setProperties(vers1,  "iid", "vers:1", "versOf", "impl:1", "code", "Guten Tag, Welt.", "time" , "123456")
//    val vers2 = graph.addVertexWithLabel(version)
//    ElementHelper.setProperties(vers2, "iid", "vers:2", "versOf", "impl:1", "code", "Hello, world.", "time", "123890")
//    // Add some edges for demonstration
//    graph.addEdge(null, functions, length, "isFunction")
//    graph.addEdge(null, length, meth1, "methodOf")
//    graph.addEdge(null, length, meth2, "methodOf")
//    graph.addEdge(null, meth1, impl1, "implementationOf")
//    graph.addEdge(null, meth1, impl2, "implementationOf")
//    graph.addEdge(null, impl1, vers1, "versionOf")
//    graph.addEdge(null, impl1, vers2, "versionOf")
//    graph.commit
//    info("Inserted the dummy data into the graph")
//  }


  /**
   * Dumps some dummy testing data into the graph
   * @param graph
   * @param numNodes
   */
  def insertDummyData(graph: TitanGraph, numNodes:Int = 1000) : String= {

    def randomString(n: Int, alphabet: String = "abcdefghijklmnopqrstuvwxyz /-"): String =
      Stream.continually(Random.nextInt(alphabet.size)).map(alphabet).take(n).mkString

    val functionNames = Array("length", "arity", "dump", "foo", "bar", "rustle", "tinker", "messAbout", "put", "get")
    val arguments = Array("Int32", "Int64", "Float64", "String", "Float32", "Uint64", "Bool", "Vector")
    val authors = Array("hans", "tim", "simon", "helmut", "verena", "anna", "lisa", "lotta", "siegfried", "michi")

    val data = for {
      i <- 0 until numNodes
      funcName  = functionNames(i % functionNames.length)
      args      = (1 to Random.nextInt(6)).map(arguments(_)).toList
      auth      = authors(Random.nextInt(authors.length))
      source    = randomString(500 + Random.nextInt(500))
      doc       = randomString(200 + Random.nextInt(200))
    } yield {
      (i, funcName, args, auth, doc)
    }
    val (result, time) = MeasureFunction.measureCallWithResult(insertSourceCode(graph, "wurstwasser", "wurst", List("wurst", "wasser"), "simonDerPenner", "was ist das hier nur fuer ein mist?"))
    info(s"It took $time ms to insert the data.")
    result
  }

  /**
   * First prototype on how to insert a user's code into the database
   * @param source
   * @param args
   * @return
   */
  def insertSourceCode(graph: TitanGraph, source: String, funcName: String, args: List[String], author: String,
                       docs: String, newImplementation: Boolean = false): String = {
    // First instantiate the vertex with the provided data
    info("Started to insert a new implementation into the graph")

    try {
      val timestamp = System.currentTimeMillis: java.lang.Long
      val versionVertex = graph.addVertexWithLabel("version")
      ElementHelper.setProperties(versionVertex, Code, source, Author, author, Documentation, docs, TimeStamp, timestamp)
      args.foreach(versionVertex.addProperty(Arguments, _))

      // Decide if there exists a function in the graph with the same name, if not create the function vertex
      info("Setting up the functionVertex")
      val functionVertex = graph.query.has(FunctionName, funcName).vertices.headOption match {
        case Some(vertex) =>
          info(s"Found the function ${vertex.getProperty[String](FunctionName)} in the graph, will use it.")
          vertex
        case None => {// go on and create the vertex for the function and link it
          info(s"Did not find the function $funcName, will create the vertex for it.")
          val newFunctionVertex = graph.addVertexWithLabel(Function)
          ElementHelper.setProperties(newFunctionVertex, FunctionName, funcName, Documentation, docs)
          val functionEdge = graph.addEdge(null, functionNode.get, newFunctionVertex, IsFunction)
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
        ElementHelper.setProperties(newImplementationVertex, Author, author, TimeStamp, timestamp)
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
            ElementHelper.setProperties(newImplementationVertex, Author, author, TimeStamp, timestamp)
            val implementationEdge = graph.addEdge(null, methodVertex, newImplementationVertex, ImplementationOf)
            ElementHelper.setProperties(implementationEdge, TimeStamp, timestamp, Weighting, InitialWeighting)
            info("Created the new implementation vertex.")
            newImplementationVertex
        }
      }

      // Make the final links
      info("Adding the final edges for the insertion.")
      val versionEdge = graph.addEdge(null, versionVertex, implementationVertex, VersionOf)
      ElementHelper.setProperties(versionEdge, TimeStamp, timestamp, Weighting, InitialWeighting)

      graph.commit()
      info("Insertion of data was successful")
      "Successfully inserted your data"

    } catch {
      case NonFatal(ex) =>
        warn(s"Could not insert the vertex into the database, $ex")
        graph.rollback
        "Could not insert your data, please try again later."
    }
  }




  /**
   * Inserts a node into the given graph with the given properties
   * @param graph
   * @param props
   */
  def insertNode(graph: TitanGraph, props: Map[String, AnyRef]): Unit = {
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
