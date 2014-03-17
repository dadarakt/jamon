/**
 * Tests the underlying implementation against the graph of the gods example given in the getting
 * started guides for Titan. Creates a database, connects to it, and afterwards retrieves the
 * data and checks for eventual corruptions.
 */

import database._
import org.scalatest.FunSuite

class GodsTest extends FunSuite{

	test("Print out the current classpath"){
		val loader = ClassLoader.getSystemClassLoader
		println(ClassLoader.getSystemClassLoader)
		println(this.getClass.getClassLoader)
		println(classOf[Object].getClassLoader)
	}
	
}