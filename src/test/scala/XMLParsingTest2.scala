import org.scalatest.FunSuite
import scala.xml.Node
import util.XMLParsing._

/**
 * Created by jannis on 5/5/14.
 */
class XMLParsingTest2 extends FunSuite {

  var myXml: Node = _

  test("Load an xml using the provided file and the string and make sure they match.") {
    import scala.io.Source

    val filename = "simpleXML.xml"
    val xmlPath = getClass.getResource(filename)

    // Read the contents from the xml file raw
    val source = Source.fromFile(xmlPath.getPath)
    val xmlString =source.mkString
    source.close

    // Read the xml using the functions in the class
    val xmlParsedFromFile = loadXML(xmlPath.getPath)
    val xmlParsedFromString = loadXML(xmlString)

    myXml = xmlParsedFromFile
    assert(xmlParsedFromFile === xmlParsedFromString)
  }

  test("feed the xml into the getFunctions thingy") {
    import util.MeasureFunction.measureCallWithResult

    val (functions,time) = measureCallWithResult(getFunctions(myXml, true))
    assert(functions.functions(0).signature === XmlArguments.musterFunction.functions(0).signature)

    println(s"~~~~~> $time")
  }

  test("Test some variations for the readArgument function"){
    import XmlArguments._
    assert(parseArgument(first)   === ("w","String","wurst"))
    assert(parseArgument(second)  === ("x", "Number", ""))
    assert(parseArgument(third)   === ("y", "int64", "11"))
    assert(parseArgument(fourth)  === ("z", "", ""))
    assert(parseArgument(fifth)   === ("w", "String", "wurst"))
  }

  test("Test some full code") {
    import XmlArguments.someCode
    val functions = getFunctions(someCode, true)
    println(s"~~~~> $functions")
  }
}


object XmlArguments {
  import util.JuliaTypes._

  val first = <expr head="kw">
    <args symbol="w"></args>
    <args>wurst</args>
  </expr>

  val second = <expr head="::">
    <args symbol="x"></args>
    <args symbol="Number"></args>
  </expr>

  val third = <expr head="kw">
    <args symbol="y"></args>
    <args int64="11"></args>
  </expr>

  val fourth = <args symbol="z"/>

  val fifth =
    <expr head="kw">
      <args>
        <expr head="::">
          <args symbol="w"/>
          <args symbol="String"/>
        </expr>
      </args>
      <args>wurst</args>
    </expr>

  val musterFunction =
    JuliaFunctions(List(JuliaFunction(JuliaSignature("f",List(("x","Number",""), ("y","int64","11")),Set(("a","int64","1"), ("b","int64","2"))),
  <args>
  <expr head="block">
    <args>
      <expr head="line">
        <args int64="2"/>
        <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
      </expr>
    </args>
    <args>
      <expr head="call">
        <args symbol="+"/>
        <args symbol="x"/>
        <args symbol="y"/>
      </expr>
    </args>
  </expr>
  </args>)))

  val someCode = <juliaTree>
    <expr head="function">
      <args>
        <expr head="call">
          <args symbol="common_prefix"/>
          <args symbol="completions"/>
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
            <expr head="=">
              <args symbol="ret"/>
              <args></args>
            </expr>
          </args>
          <args lineNumberNode=" # line 3:"/>
          <args>
            <expr head="=">
              <args symbol="i"/>
              <args>
                <expr head="=">
                  <args symbol="nexti"/>
                  <args int64="1"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 4:"/>
          <args>
            <expr head="=">
              <args>
                <expr head="tuple">
                  <args symbol="cc"/>
                  <args symbol="nexti"/>
                </expr>
              </args>
              <args>
                <expr head="call">
                  <args symbol="next"/>
                  <args>
                    <expr head="ref">
                      <args symbol="completions"/>
                      <args int64="1"/>
                    </expr>
                  </args>
                  <args int64="1"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 5:"/>
          <args>
            <expr head="while">
              <args bool="true"/>
              <args>
                <expr head="block">
                  <args lineNumberNode=" # line 6:"/>
                  <args>
                    <expr head="for">
                      <args>
                        <expr head="=">
                          <args symbol="c"/>
                          <args symbol="completions"/>
                        </expr>
                      </args>
                      <args>
                        <expr head="block">
                          <args lineNumberNode=" # line 7:"/>
                          <args>
                            <expr head="&amp;&amp;">
                              <args>
                                <expr head="||">
                                  <args>
                                    <expr head="comparison">
                                      <args symbol="i"/>
                                      <args symbol="&gt;"/>
                                      <args>
                                        <expr head="call">
                                          <args symbol="length"/>
                                          <args symbol="c"/>
                                        </expr>
                                      </args>
                                    </expr>
                                  </args>
                                  <args>
                                    <expr head="comparison">
                                      <args>
                                        <expr head="ref">
                                          <args symbol="c"/>
                                          <args symbol="i"/>
                                        </expr>
                                      </args>
                                      <args symbol="!="/>
                                      <args symbol="cc"/>
                                    </expr>
                                  </args>
                                </expr>
                              </args>
                              <args>
                                <expr head="return">
                                  <args symbol="ret"/>
                                </expr>
                              </args>
                            </expr>
                          </args>
                        </expr>
                      </args>
                    </expr>
                  </args>
                  <args lineNumberNode=" # line 9:"/>
                  <args>
                    <expr head="*=">
                      <args symbol="ret"/>
                      <args>
                        <expr head="call">
                          <args symbol="string"/>
                          <args symbol="cc"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                  <args lineNumberNode=" # line 10:"/>
                  <args>
                    <expr head="&amp;&amp;">
                      <args>
                        <expr head="comparison">
                          <args symbol="i"/>
                          <args symbol="&gt;="/>
                          <args>
                            <expr head="call">
                              <args symbol="length"/>
                              <args>
                                <expr head="ref">
                                  <args symbol="completions"/>
                                  <args int64="1"/>
                                </expr>
                              </args>
                            </expr>
                          </args>
                        </expr>
                      </args>
                      <args>
                        <expr head="return">
                          <args symbol="ret"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                  <args lineNumberNode=" # line 11:"/>
                  <args>
                    <expr head="=">
                      <args symbol="i"/>
                      <args symbol="nexti"/>
                    </expr>
                  </args>
                  <args lineNumberNode=" # line 12:"/>
                  <args>
                    <expr head="=">
                      <args>
                        <expr head="tuple">
                          <args symbol="cc"/>
                          <args symbol="nexti"/>
                        </expr>
                      </args>
                      <args>
                        <expr head="call">
                          <args symbol="next"/>
                          <args>
                            <expr head="ref">
                              <args symbol="completions"/>
                              <args int64="1"/>
                            </expr>
                          </args>
                          <args symbol="i"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                </expr>
              </args>
            </expr>
          </args>
        </expr>
      </args>
    </expr>
    <expr head="function">
      <args>
        <expr head="call">
          <args symbol="show_completions"/>
          <args>
            <expr head="::">
              <args symbol="s"/>
              <args symbol="PromptState"/>
            </expr>
          </args>
          <args symbol="completions"/>
        </expr>
      </args>
      <args>
        <expr head="block">
          <args>
            <expr head="line">
              <args int64="4"/>
              <args symbol="/home/jannis/jamon/src/main/julia/parsing/Parsing.jl"/>
            </expr>
          </args>
          <args>
            <expr head="=">
              <args symbol="colmax"/>
              <args>
                <expr head="call">
                  <args symbol="maximum"/>
                  <args>
                    <expr head="call">
                      <args symbol="map"/>
                      <args symbol="length"/>
                      <args symbol="completions"/>
                    </expr>
                  </args>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 5:"/>
          <args>
            <expr head="=">
              <args symbol="num_cols"/>
              <args>
                <expr head="call">
                  <args symbol="max"/>
                  <args>
                    <expr head="call">
                      <args symbol="div"/>
                      <args>
                        <expr head="call">
                          <args symbol="width"/>
                          <args>
                            <expr head="call">
                              <args symbol="terminal"/>
                              <args symbol="s"/>
                            </expr>
                          </args>
                        </expr>
                      </args>
                      <args>
                        <expr head="call">
                          <args symbol="+"/>
                          <args symbol="colmax"/>
                          <args int64="2"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                  <args int64="1"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 6:"/>
          <args>
            <expr head="=">
              <args>
                <expr head="tuple">
                  <args symbol="entries_per_col"/>
                  <args symbol="r"/>
                </expr>
              </args>
              <args>
                <expr head="call">
                  <args symbol="divrem"/>
                  <args>
                    <expr head="call">
                      <args symbol="length"/>
                      <args symbol="completions"/>
                    </expr>
                  </args>
                  <args symbol="num_cols"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 7:"/>
          <args>
            <expr head="+=">
              <args symbol="entries_per_col"/>
              <args>
                <expr head="comparison">
                  <args symbol="r"/>
                  <args symbol="!="/>
                  <args int64="0"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 9:"/>
          <args>
            <expr head="call">
              <args symbol="cmove_down"/>
              <args>
                <expr head="call">
                  <args symbol="terminal"/>
                  <args symbol="s"/>
                </expr>
              </args>
              <args>
                <expr head="call">
                  <args symbol="input_string_newlines_aftercursor"/>
                  <args symbol="s"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 10:"/>
          <args>
            <expr head="call">
              <args symbol="println"/>
              <args>
                <expr head="call">
                  <args symbol="terminal"/>
                  <args symbol="s"/>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 11:"/>
          <args>
            <expr head="for">
              <args>
                <expr head="=">
                  <args symbol="row"/>
                  <args>
                    <expr head=":">
                      <args int64="1"/>
                      <args symbol="entries_per_col"/>
                    </expr>
                  </args>
                </expr>
              </args>
              <args>
                <expr head="block">
                  <args lineNumberNode=" # line 12:"/>
                  <args>
                    <expr head="for">
                      <args>
                        <expr head="=">
                          <args symbol="col"/>
                          <args>
                            <expr head=":">
                              <args int64="0"/>
                              <args symbol="num_cols"/>
                            </expr>
                          </args>
                        </expr>
                      </args>
                      <args>
                        <expr head="block">
                          <args lineNumberNode=" # line 13:"/>
                          <args>
                            <expr head="=">
                              <args symbol="idx"/>
                              <args>
                                <expr head="call">
                                  <args symbol="+"/>
                                  <args symbol="row"/>
                                  <args>
                                    <expr head="call">
                                      <args symbol="*"/>
                                      <args symbol="col"/>
                                      <args symbol="entries_per_col"/>
                                    </expr>
                                  </args>
                                </expr>
                              </args>
                            </expr>
                          </args>
                          <args lineNumberNode=" # line 14:"/>
                          <args>
                            <expr head="if">
                              <args>
                                <expr head="comparison">
                                  <args symbol="idx"/>
                                  <args symbol="&lt;="/>
                                  <args>
                                    <expr head="call">
                                      <args symbol="length"/>
                                      <args symbol="completions"/>
                                    </expr>
                                  </args>
                                </expr>
                              </args>
                              <args>
                                <expr head="block">
                                  <args lineNumberNode=" # line 15:"/>
                                  <args>
                                    <expr head="call">
                                      <args symbol="cmove_col"/>
                                      <args>
                                        <expr head="call">
                                          <args symbol="terminal"/>
                                          <args symbol="s"/>
                                        </expr>
                                      </args>
                                      <args>
                                        <expr head="call">
                                          <args symbol="*"/>
                                          <args>
                                            <expr head="call">
                                              <args symbol="+"/>
                                              <args symbol="colmax"/>
                                              <args int64="2"/>
                                            </expr>
                                          </args>
                                          <args symbol="col"/>
                                        </expr>
                                      </args>
                                    </expr>
                                  </args>
                                  <args lineNumberNode=" # line 16:"/>
                                  <args>
                                    <expr head="call">
                                      <args symbol="print"/>
                                      <args>
                                        <expr head="call">
                                          <args symbol="terminal"/>
                                          <args symbol="s"/>
                                        </expr>
                                      </args>
                                      <args>
                                        <expr head="ref">
                                          <args symbol="completions"/>
                                          <args symbol="idx"/>
                                        </expr>
                                      </args>
                                    </expr>
                                  </args>
                                </expr>
                              </args>
                            </expr>
                          </args>
                        </expr>
                      </args>
                    </expr>
                  </args>
                  <args lineNumberNode=" # line 19:"/>
                  <args>
                    <expr head="call">
                      <args symbol="println"/>
                      <args>
                        <expr head="call">
                          <args symbol="terminal"/>
                          <args symbol="s"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                </expr>
              </args>
            </expr>
          </args>
          <args lineNumberNode=" # line 22:"/>
          <args>
            <expr head="for">
              <args>
                <expr head="=">
                  <args symbol="i"/>
                  <args>
                    <expr head=":">
                      <args int64="1"/>
                      <args>
                        <expr head="call">
                          <args symbol="input_string_newlines"/>
                          <args symbol="s"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                </expr>
              </args>
              <args>
                <expr head="block">
                  <args lineNumberNode=" # line 23:"/>
                  <args>
                    <expr head="call">
                      <args symbol="println"/>
                      <args>
                        <expr head="call">
                          <args symbol="terminal"/>
                          <args symbol="s"/>
                        </expr>
                      </args>
                    </expr>
                  </args>
                </expr>
              </args>
            </expr>
          </args>
        </expr>
      </args>
    </expr>
  </juliaTree>

}