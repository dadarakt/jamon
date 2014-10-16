///**
// * Tests the xml parsing used to read xml from files or the serial connection to the client
// */
//
////import utils.{Requests, JuliaFunctions}
//import utils.XMLParsing._
//import scala.xml.Node
//import org.scalatest.FunSuite
//import scala.utils.{Try, Success, Failure}
//
//class XMLParsingTest extends FunSuite {
//  // Get all the data for testing from below
//  import TestAuxiliaries._
//
//  var myXml: Node = _
//
//	test("Load an xml using the provided file and the string and make sure they match.") {
//		import scala.io.Source
//
//		val filename = "testQuery.xml"
//		val xmlPath = getClass.getResource(filename)
//
//		// Read the contents from the xml file raw
//		val source = Source.fromFile(xmlPath.getPath)
//		val xmlString =source.mkString
//		source.close
//
//		// Read the xml using the functions in the class
//		val xmlParsedFromFile = loadXML(xmlPath.getPath)
//		val xmlParsedFromString = loadXML(xmlString)
//
//		myXml = xmlParsedFromFile
//		assert(xmlParsedFromFile === xmlParsedFromString)
//	}
//
//	test("Make sure we retrieve the correct number of functions from the file."){
//		val functionsFromXML = getFunctions(myXml, true)
//    assert(functions.length === functionsFromXML.length)
//	}
//
//  test("Check if an XML validates against the provided schema (it should!).") {
//    loadXMLWithValidation("/testQuery.xml")
//  }
//
//  test("Test if the correct datastructure is generated.") {
//    val query = generateQueryFromXML(myXml, "simon")
//    // Check for all the members except those which are variable (i.e. timestamp)
//    assert(query.client === supposedQuery.client)
//    assert(query.juliaVersion === supposedQuery.juliaVersion)
//    assert(query.requests === supposedQuery.requests)
//    assert(query.sender === supposedQuery.sender)
//    assert(query.user === supposedQuery.user)
//    assert(query.userTimestamp === supposedQuery.userTimestamp)
//    //assert(query.juliaCode === supposedQuery.juliaCode)
//  }
//}
//
//object TestAuxiliaries {
//  // The input to the parsing on julia's side
//  val originalInput =
//    """<?xml version="1.0" encoding="utf-8"?>
//          <root>
//            <header>
//              <timestamp>2014-04-08T14:30:10.888Z</timestamp>
//              <sender>127.0.0.1</sender>
//              <client>editor</client>
//              <user>simon</user>
//              <juliaVersion>0.2.1</juliaVersion>
//              <requests>InsertCode</requests>
//            </header>
//            <body>
//              <juliaTree>
//                <expr head="call">
//                  <args symbol="include"/>
//                  <args>dependencies/OGLUtil.jl</args>
//                </expr>
//                <expr head="function">
//                  <args>
//                    <expr head="call">
//                      <args symbol="resizeFunc"/>
//                      <args>
//                        <expr head="::">
//                          <args symbol="w"/>
//                          <args symbol="GLsizei"/>
//                        </expr>
//                      </args>
//                      <args>
//                        <expr head="::">
//                          <args symbol="h"/>
//                          <args symbol="GLsizei"/>
//                        </expr>
//                      </args>
//                    </expr>
//                  </args>
//                  <args>
//                    <expr head="block">
//                      <args>
//                        <expr head="line">
//                          <args int64="2"/>
//                          <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
//                        </expr>
//                      </args>
//                      <args>
//                        <expr head="global">
//                          <args symbol="projMatrix"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 3:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="glViewport"/>
//                          <args int64="0"/>
//                          <args int64="0"/>
//                          <args symbol="w"/>
//                          <args symbol="h"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 4:"/>
//                      <args>
//                        <expr head="=">
//                          <args symbol="projMatrix"/>
//                          <args>
//                            <expr head="call">
//                              <args symbol="computeOrthographicProjection"/>
//                              <args float32="0.0"/>
//                              <args>
//                                <expr head="call">
//                                  <args symbol="float32"/>
//                                  <args symbol="w"/>
//                                </expr>
//                              </args>
//                              <args float32="0.0"/>
//                              <args>
//                                <expr head="call">
//                                  <args symbol="float32"/>
//                                  <args symbol="h"/>
//                                </expr>
//                              </args>
//                              <args float32="-10.0"/>
//                              <args float32="10.0"/>
//                            </expr>
//                          </args>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 5:"/>
//                      <args>
//                        <expr head="return">
//                          <args symbol="nothing"/>
//                        </expr>
//                      </args>
//                    </expr>
//                  </args>
//                </expr>
//                <expr head="function">
//                  <args>
//                    <expr head="call">
//                      <args symbol="displayFuncCallback"/>
//                    </expr>
//                  </args>
//                  <args>
//                    <expr head="block">
//                      <args>
//                        <expr head="line">
//                          <args int64="3"/>
//                          <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
//                        </expr>
//                      </args>
//                      <args>
//                        <expr head="global">
//                          <args symbol="projMatrix"/>
//                          <args symbol="model"/>
//                          <args symbol="words"/>
//                          <args symbol="textField"/>
//                          <args symbol="mouseCursor"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 5:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="glClear"/>
//                          <args>
//                            <expr head="call">
//                              <args symbol=""/>
//                              <args symbol="COLOR_BUFFER_BIT"/>
//                              <args symbol="DEPTH_BUFFER_BIT"/>
//                            </expr>
//                          </args>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 7:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="render"/>
//                          <args symbol="textField"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 8:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="render"/>
//                          <args symbol="textField2"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 10:"/>
//                      <args>
//                        <expr head="return">
//                          <args symbol="nothing"/>
//                        </expr>
//                      </args>
//                    </expr>
//                  </args>
//                </expr>
//                <expr head="call">
//                  <args symbol="glClearColor"/>
//                  <args float32="0.2"/>
//                  <args float32="0.2"/>
//                  <args float32="0.2"/>
//                  <args float32="0.2"/>
//                </expr>
//                <expr head="call">
//                  <args symbol="glutMainLoop"/>
//                </expr>
//              </juliaTree>
//            </body>
//          </root>"""
//
//  val functions: List[String] = List(
//    """<expr head="function">
//                  <args>
//                    <expr head="call">
//                      <args symbol="resizeFunc"/>
//                      <args>
//                        <expr head="::">
//                          <args symbol="w"/>
//                          <args symbol="GLsizei"/>
//                        </expr>
//                      </args>
//                      <args>
//                        <expr head="::">
//                          <args symbol="h"/>
//                          <args symbol="GLsizei"/>
//                        </expr>
//                      </args>
//                    </expr>
//                  </args>
//                  <args>
//                    <expr head="block">
//                      <args>
//                        <expr head="line">
//                          <args int64="2"/>
//                          <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
//                        </expr>
//                      </args>
//                      <args>
//                        <expr head="global">
//                          <args symbol="projMatrix"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 3:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="glViewport"/>
//                          <args int64="0"/>
//                          <args int64="0"/>
//                          <args symbol="w"/>
//                          <args symbol="h"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 4:"/>
//                      <args>
//                        <expr head="=">
//                          <args symbol="projMatrix"/>
//                          <args>
//                            <expr head="call">
//                              <args symbol="computeOrthographicProjection"/>
//                              <args float32="0.0"/>
//                              <args>
//                                <expr head="call">
//                                  <args symbol="float32"/>
//                                  <args symbol="w"/>
//                                </expr>
//                              </args>
//                              <args float32="0.0"/>
//                              <args>
//                                <expr head="call">
//                                  <args symbol="float32"/>
//                                  <args symbol="h"/>
//                                </expr>
//                              </args>
//                              <args float32="-10.0"/>
//                              <args float32="10.0"/>
//                            </expr>
//                          </args>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 5:"/>
//                      <args>
//                        <expr head="return">
//                          <args symbol="nothing"/>
//                        </expr>
//                      </args>
//                    </expr>
//                  </args>
//                </expr>""",
//    """<expr head="function">
//                  <args>
//                    <expr head="call">
//                      <args symbol="displayFuncCallback"/>
//                    </expr>
//                  </args>
//                  <args>
//                    <expr head="block">
//                      <args>
//                        <expr head="line">
//                          <args int64="3"/>
//                          <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
//                        </expr>
//                      </args>
//                      <args>
//                        <expr head="global">
//                          <args symbol="projMatrix"/>
//                          <args symbol="model"/>
//                          <args symbol="words"/>
//                          <args symbol="textField"/>
//                          <args symbol="mouseCursor"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 5:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="glClear"/>
//                          <args>
//                            <expr head="call">
//                              <args symbol=""/>
//                              <args symbol="COLOR_BUFFER_BIT"/>
//                              <args symbol="DEPTH_BUFFER_BIT"/>
//                            </expr>
//                          </args>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 7:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="render"/>
//                          <args symbol="textField"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 8:"/>
//                      <args>
//                        <expr head="call">
//                          <args symbol="render"/>
//                          <args symbol="textField2"/>
//                        </expr>
//                      </args>
//                      <args lineNumberNode=" # line 10:"/>
//                      <args>
//                        <expr head="return">
//                          <args symbol="nothing"/>
//                        </expr>
//                      </args>
//                    </expr>
//                  </args>
//                </expr>"""
//  )
//
//  val supposedQuery = utils.Query(1.396967410888E12,1.397227557E12,"simon","EDITOR","simon","0.2.1",Requests(List("InsertCode")),JuliaFunctions(List(<expr head="function">
//    <args>
//      <expr head="call">
//        <args symbol="resizeFunc"/>
//        <args>
//          <expr head="::">
//            <args symbol="w"/>
//            <args symbol="GLsizei"/>
//          </expr>
//        </args>
//        <args>
//          <expr head="::">
//            <args symbol="h"/>
//            <args symbol="GLsizei"/>
//          </expr>
//        </args>
//      </expr>
//    </args>
//    <args>
//      <expr head="block">
//        <args>
//          <expr head="line">
//            <args int64="2"/>
//            <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
//          </expr>
//        </args>
//        <args>
//          <expr head="global">
//            <args symbol="projMatrix"/>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 3:"/>
//        <args>
//          <expr head="call">
//            <args symbol="glViewport"/>
//            <args int64="0"/>
//            <args int64="0"/>
//            <args symbol="w"/>
//            <args symbol="h"/>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 4:"/>
//        <args>
//          <expr head="=">
//            <args symbol="projMatrix"/>
//            <args>
//              <expr head="call">
//                <args symbol="computeOrthographicProjection"/>
//                <args float32="0.0"/>
//                <args>
//                  <expr head="call">
//                    <args symbol="float32"/>
//                    <args symbol="w"/>
//                  </expr>
//                </args>
//                <args float32="0.0"/>
//                <args>
//                  <expr head="call">
//                    <args symbol="float32"/>
//                    <args symbol="h"/>
//                  </expr>
//                </args>
//                <args float32="-10.0"/>
//                <args float32="10.0"/>
//              </expr>
//            </args>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 5:"/>
//        <args>
//          <expr head="return">
//            <args symbol="nothing"/>
//          </expr>
//        </args>
//      </expr>
//    </args>
//  </expr>, <expr head="function">
//    <args>
//      <expr head="call">
//        <args symbol="displayFuncCallback"/>
//      </expr>
//    </args>
//    <args>
//      <expr head="block">
//        <args>
//          <expr head="line">
//            <args int64="3"/>
//            <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
//          </expr>
//        </args>
//        <args>
//          <expr head="global">
//            <args symbol="projMatrix"/>
//            <args symbol="model"/>
//            <args symbol="words"/>
//            <args symbol="textField"/>
//            <args symbol="mouseCursor"/>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 5:"/>
//        <args>
//          <expr head="call">
//            <args symbol="glClear"/>
//            <args>
//              <expr head="call">
//                <args symbol="|"/>
//                <args symbol="COLOR_BUFFER_BIT"/>
//                <args symbol="DEPTH_BUFFER_BIT"/>
//              </expr>
//            </args>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 7:"/>
//        <args>
//          <expr head="call">
//            <args symbol="render"/>
//            <args symbol="textField"/>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 8:"/>
//        <args>
//          <expr head="call">
//            <args symbol="render"/>
//            <args symbol="textField2"/>
//          </expr>
//        </args>
//        <args lineNumberNode=" # line 10:"/>
//        <args>
//          <expr head="return">
//            <args symbol="nothing"/>
//          </expr>
//        </args>
//      </expr>
//    </args>
//  </expr>)))
//}