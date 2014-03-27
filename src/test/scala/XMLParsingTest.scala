/**
 * Tests the xml parsing
 */

import util.XMLParsing
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

	// The content of the xml file
	val xmlContent = """<?xml version="1.0" encoding="utf-8"?>
<juliaTree>
  <expr head="call">
    <args symbol="include"/>
    <args>dependencies/OGLUtil.jl</args>
  </expr>
  <expr head="function">
    <args>
      <expr head="call">
        <args symbol="resizeFunc"/>
        <args>
          <expr head="::">
            <args symbol="w"/>
            <args symbol="GLsizei"/>
          </expr>
        </args>
        <args>
          <expr head="::">
            <args symbol="h"/>
            <args symbol="GLsizei"/>
          </expr>
        </args>
      </expr>
    </args>
    <args>
      <expr head="block">
        <args>
          <expr head="line">
            <args int64="2"/>
            <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
          </expr>
        </args>
        <args>
          <expr head="global">
            <args symbol="projMatrix"/>
          </expr>
        </args>
        <args lineNumberNode=" # line 3:"/>
        <args>
          <expr head="call">
            <args symbol="glViewport"/>
            <args int64="0"/>
            <args int64="0"/>
            <args symbol="w"/>
            <args symbol="h"/>
          </expr>
        </args>
        <args lineNumberNode=" # line 4:"/>
        <args>
          <expr head="=">
            <args symbol="projMatrix"/>
            <args>
              <expr head="call">
                <args symbol="computeOrthographicProjection"/>
                <args float32="0.0"/>
                <args>
                  <expr head="call">
                    <args symbol="float32"/>
                    <args symbol="w"/>
                  </expr>
                </args>
                <args float32="0.0"/>
                <args>
                  <expr head="call">
                    <args symbol="float32"/>
                    <args symbol="h"/>
                  </expr>
                </args>
                <args float32="-10.0"/>
                <args float32="10.0"/>
              </expr>
            </args>
          </expr>
        </args>
        <args lineNumberNode=" # line 5:"/>
        <args>
          <expr head="return">
            <args symbol="nothing"/>
          </expr>
        </args>
      </expr>
    </args>
  </expr>
  <expr head="function">
    <args>
      <expr head="call">
        <args symbol="displayFuncCallback"/>
      </expr>
    </args>
    <args>
      <expr head="block">
        <args>
          <expr head="line">
            <args int64="3"/>
            <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
          </expr>
        </args>
        <args>
          <expr head="global">
            <args symbol="projMatrix"/>
            <args symbol="model"/>
            <args symbol="words"/>
            <args symbol="textField"/>
            <args symbol="mouseCursor"/>
          </expr>
        </args>
        <args lineNumberNode=" # line 5:"/>
        <args>
          <expr head="call">
            <args symbol="glClear"/>
            <args>
              <expr head="call">
                <args symbol="|"/>
                <args symbol="COLOR_BUFFER_BIT"/>
                <args symbol="DEPTH_BUFFER_BIT"/>
              </expr>
            </args>
          </expr>
        </args>
        <args lineNumberNode=" # line 7:"/>
        <args>
          <expr head="call">
            <args symbol="render"/>
            <args symbol="textField"/>
          </expr>
        </args>
        <args lineNumberNode=" # line 8:"/>
        <args>
          <expr head="call">
            <args symbol="render"/>
            <args symbol="textField2"/>
          </expr>
        </args>
        <args lineNumberNode=" # line 10:"/>
        <args>
          <expr head="return">
            <args symbol="nothing"/>
          </expr>
        </args>
      </expr>
    </args>
  </expr>
  <expr head="call">
    <args symbol="glClearColor"/>
    <args float32="0.2"/>
    <args float32="0.2"/>
    <args float32="0.2"/>
    <args float32="0.2"/>
  </expr>
  <expr head="call">
    <args symbol="glutMainLoop"/>
  </expr>
</juliaTree>
"""

	test("Open the xml and make sure everthing is right") {
		XMLParsing.readFromFile("testOutput.xml")	
		
	}


	test("Dummy so far"){
		println("done")
	}
}