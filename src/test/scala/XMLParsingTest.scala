/**
 * Tests the xml parsing
 */

import util.XMLParsing
import scala.xml.Node
import org.scalatest.FunSuite
import scala.util.{Try, Success, Failure}
import com.thinkaurelius.titan.core.TitanGraph


class XMLParsingTest extends FunSuite {

	// The input to the parsing on julia's side
	val originalInput = """include("dependencies/OGLUtil.jl")
function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeOrthographicProjection( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

function displayFuncCallback()
	global projMatrix, model, words, textField, mouseCursor

	glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

	render(textField)
	render(textField2)

	return nothing
end

glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

glutMainLoop()"""

	
	var xml: Node = _

	test("Load an xml from file and from a string and check whether it is the same") {
		import scala.io.Source
		import java.io.File
		import scala.xml.XML

		val filename = "testOutput.xml"

		// Get the resource
		val xmlPath = getClass.getResource(filename)

		// Read the contents from the xml file raw
		val source = Source.fromFile(xmlPath.getPath)
		val xmlString =source.mkString
		source.close

		// Read the xml using the functions in the class
		val xmlParsedFromFile = XMLParsing.loadXML(xmlPath.getPath)
		val xmlParsedFromString = XMLParsing.loadXML(xmlString)

		xml = xmlParsedFromFile

		assert(xmlParsedFromFile === xmlParsedFromString)
	}

	test("See what happens on parsing the generated xml"){
		XMLParsing.getFunctions(xml)	
	}

}