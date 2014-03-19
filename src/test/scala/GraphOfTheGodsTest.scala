/**
 * Tests the underlying implementation against the graph of the gods example given in the getting
 * started guides for Titan. Creates a database, connects to it, and afterwards retrieves the
 * data and checks for eventual corruptions.
 */

import database.TitanDatabaseConnection._
import org.scalatest.FunSuite
import org.scalatest.BeforeAndAfterAll
import scala.util.{Try, Success, Failure}
import com.thinkaurelius.titan.core.TitanGraph

class GodsTest extends FunSuite with BeforeAndAfterAll{

	var graph: Option[TitanGraph] = None

	test("Connect to the graph") {
		graph = openGraphFromConfig() match {
			case Success(g) => {
				println(s"Got the graph! $g")
				Some(g)
			}
			case Failure(ex) => {
				println(s"Could not open the graph!!")
				throw ex
			}
		}
	}

	test("Retrieve a vertex") {
		graph.foreach { (g: TitanGraph) =>

			retrieveVertex(g, "name", "hercules")
		}		
	}


	test("Shutdown the graph") {
		graph.foreach{_.shutdown}
	}
	
}