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
    val functions = getFunctions(myXml, true)
    assert(functions.functions(0).signature === XmlArguments.musterFunction.functions(0).signature)
  }

  test("Test some variations for the readArgument function"){
    import XmlArguments._
    assert(parseArgument(first)   === ("w","String","wurst"))
    assert(parseArgument(second)  === ("x", "Number", ""))
    assert(parseArgument(third)   === ("y", "int64", "11"))
    assert(parseArgument(fourth)  === ("z", "", ""))
    assert(parseArgument(fifth)   === ("w", "String", "wurst"))
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


}