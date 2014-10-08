/**
 * Created by Jannis on 10/7/14.
 */

import com.tinkerpop.blueprints.{Vertex, Direction}
import database.{TitanDatabaseConnection, TitanGraphObject}
import org.scalatest.{BeforeAndAfterAll, BeforeAndAfter, FunSuite}
import TitanGraphObject._
import scala.collection.JavaConversions._

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

  test("Remove the function introduced to clean up the graph") {
    // Remove all written data so the graph does not get cluttered
    TitanDatabaseConnection.removeFunction(funcName)


  }



}
