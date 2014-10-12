/**
 * Created by Jannis on 10/7/14.
 */

import com.tinkerpop.blueprints.{Vertex, Direction}
import database.{TitanDatabaseConnection, TitanGraphObject}
import org.scalatest.{BeforeAndAfterAll, FunSuite}
import scala.util.Random
import TitanGraphObject._
import scala.collection.JavaConversions._
import util.MeasureFunction
import TitanDatabaseConnection.{removeFunction, insertSourceCode}

class TitanDbInteractionsTest extends FunSuite with BeforeAndAfterAll{

  val graphObject = TitanGraphObject

  val code = "Wurstwasser ist leckker denn Wurstwasser ist gesund fuer Kind und Kegel."
  val funcName = "wurst"
  val auth     = "Simon Le Wurstchen"
  val args     = List("wurst", "wasser")
  val doc      = "Die Funktion von Wurstwasser war bisher ein wohlgehuetetes Geheimnis, hier enthuellen wir alle Fakten."


  test("Get the grpah and check if it is open.") {
    val graph = graphObject.graph
    assert(graph.isOpen)
  }

  var vers: Vertex = _
  var impl: Vertex = _
  var meth: Vertex = _
  var func: Vertex = _

  test("Insert something into the graph and make sure it is in the graph") {
    val graph = graphObject.graph
    TitanDatabaseConnection.insertSourceCode(code, funcName, args, auth, doc, false, false)
    func = graph.query.has(FunctionName, funcName).vertices.head
    meth = func.query.direction(Direction.OUT).vertices.
      find(_.getProperty[java.util.ArrayList[String]](Arguments) .toList == args).get
    impl = meth.query.direction(Direction.OUT).vertices.
      find(_.getProperty[String](Author) == auth).get
    vers = impl.query.direction(Direction.OUT).vertices.
      find(_.getProperty[String](Code) == code).get

    println(impl.getProperty[String](Documentation))
  }

  test("Override old data in the version and make sure there is no new version in the graph") {
    val graph = graphObject.graph
    TitanDatabaseConnection.insertSourceCode("overwritten", funcName, args, auth, doc, false, false)
    assert(vers.getProperty[String](Code) === "overwritten")
  }

  test("Insert a new version, make sure there is a new one and the old one still extists.") {
    val graph = graphObject.graph
    val newVers =TitanDatabaseConnection.insertSourceCode(code, funcName, args, auth, doc, false, true)
    assert(vers.getProperty[String](Code) === "overwritten")
    assert(newVers.getProperty[String](Code) === code)
    assert(impl.getEdges(Direction.OUT, VersionOf).size === 2)
    assert(vers.getProperty[Long](TimeStamp) < newVers.getProperty[Long](TimeStamp))
  }

  test("Insert a new implementation, make sure there is a new one and the old one still exists.") {
    val graph = graphObject.graph
    assert(meth.getEdges(Direction.OUT, ImplementationOf).size === 1)
    TitanDatabaseConnection.insertSourceCode(code, funcName, args, auth, doc, true, false)
    val newImpl = meth.getVertices(Direction.OUT, ImplementationOf).toList.sortBy(_.getProperty[Long](TimeStamp)).last
    assert(meth.getEdges(Direction.OUT, ImplementationOf).size === 2)
    assert(meth.getProperty[Long](TimeStamp) < newImpl.getProperty[Long](TimeStamp))
    assert(impl.getProperty[String](Documentation) === newImpl.getProperty[String](Documentation))
  }

  test("Do a quick batch insert to get an idea of the time needed") {
    val numNodes = 1000
    def randomString(n: Int, alphabet: String = "abcdefghijklmnopqrstuvwxyz /-"): String =
      Stream.continually(Random.nextInt(alphabet.size)).map(alphabet).take(n).mkString

    val functionNames = Array("length", "arity", "dump", "foo", "bar", "rustle", "tinker", "messAbout", "put", "get")
    val arguments = Array("Int32", "Int64", "Float64", "String", "Float32", "Uint64", "Bool", "Vector")
    val authors = Array("hans", "tim", "simon", "helmut", "verena", "anna", "lisa", "lotta", "siegfried", "michi")

    val insertionResults = for {
      i <- 0 until numNodes
      funcName  = functionNames(i % functionNames.length)
      args      = (1 to Random.nextInt(6)).map(arguments(_)).toList
      auth      = authors(Random.nextInt(authors.length))
      source    = randomString(500 + Random.nextInt(500))
      doc       = randomString(200 + Random.nextInt(200))
    } yield {
      MeasureFunction.measureCallWithResult(insertSourceCode(source, funcName, args, auth, doc))
    }
    val times = insertionResults.map(_._2)
    val avg   = times.drop(20).foldLeft(0.0)((t,r) => t + r) / times.length
    val max   = times.max
    val min   = times.min
    info(s"Inserted ${times.length} versions into the graph. min: $min, max: $max, avg: $avg")
    graph.commit

    info(TitanGraphObject.graphToString)
    val (deleteStatus, deleteTime) = MeasureFunction.measureCallWithResult(
      functionNames.foreach(removeFunction(_))
    )
    info(s"It took $deleteTime ms to clear out the data from the graph")
    graph.commit
    "Sucessfully dumped the data to the graph"
  }

  test("Remove the function introduced to clean up the graph") {
    // Remove all written data so the graph does not get cluttered
    TitanDatabaseConnection.removeFunction(funcName)
  }
}
