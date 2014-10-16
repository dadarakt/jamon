import database.InsertionRequest
import org.scalatest.FunSuite

/**
 * Created by Jannis on 10/16/14.
 */

import spray.json._
import DefaultJsonProtocol._
import database.DatabaseJsonProtocols._
import utils.JuliaTypes._
import Helpers._

class JsonSerializationTest extends FunSuite{


  test("Test for JuliaArgument parsing"){
    assert(ArgumentJsonWithDefault.parseJson.convertTo[JuliaArgument] === ArgumentWithDefault)
    assert(ArgumentJsonNoDefault.parseJson.convertTo[JuliaArgument] === ArgumentNoDefault)
  }

  test("Make sure that unparseable results are rejected"){
    intercept[spray.json.DeserializationException](
      ArgumentJsonErroneous.parseJson.convertTo[JuliaArgument]
    )
  }

  test("Test for JuliaSignature parsing"){
    assert(SignatureJson.parseJson.convertTo[JuliaSignature] === signature)
  }

  test("Test for Julia Insertion parsing"){
    assert(FunctionJson.parseJson.convertTo[InsertionRequest] === insertionRequest)
  }
}

object Helpers {
  // The scala objects to compare with
  val ArgumentWithDefault   = JuliaArgument("defaults", "IOStream", Some("open(\"dolla.cash\")"))
  val ArgumentNoDefault     = JuliaArgument("defaults", "IOStream", None)
  val functionName          = "janoli"
  val newVersion            = true
  val newImplementation     = true
  val keyArgs               = List(JuliaArgument("lol", "Any", "hallo"), JuliaArgument("lol2", "Int64", 33))
  val args = List(
    JuliaArgument("deine", "BigInt", None),
    JuliaArgument("Mama", "Float32", None),
    JuliaArgument("ist", "Any", None),
    JuliaArgument("defaults", "IOStream", "open(\"dolla.cash\")")
  )
  val signature = JuliaSignature(functionName,
    args,
    Some(JuliaArgument("lolly", "Int64", "lol, imma default")))
  val function = JuliaFunction(signature, "mad code")
  val insertionRequest = database.InsertionRequest(signature, "mad code", "Simon Popanisch", "feels good maan...", true, true)

  // The serialized objects
  val ArgumentJsonWithDefault  =
    """
      |{"default":"open(\"dolla.cash\")","typ":"IOStream","name":"defaults"}
    """.stripMargin
  val ArgumentJsonNoDefault =
    """
      |{"typ":"IOStream","name":"defaults"},
    """.stripMargin
  val ArgumentJsonErroneous = {
    """
      |{"name":"Mama"},
    """.stripMargin
  }
  val SignatureJson =
    """
      |{
      |        "varargs":{"default":"lol, imma default","typ":"Int64","name":"lolly"},
      |        "keyargs":[
      |          {"default":"hallo","typ":"Any","name":"keyarg1"},
      |          {"default":"33","typ":"Int64","name":"lol2"}
      |        ],
      |        "arguments":[
      |          {"typ":"BigInt","name":"deine"},
      |          {"typ":"Float32","name":"Mama"},
      |          {"typ":"Any","name":"ist"},
      |          {"default":"open(\"dolla.cash\")","typ":"IOStream","name":"defaults"}
      |          ],
      |        "name":"janoli"
      |      }
    """.stripMargin
  val FunctionJson =
    """ {
      "newImplementation":true,
      "signature":{
        "varargs":{"default":"lol, imma default","typ":"Int64","name":"lolly"},
        "keyargs":[
          {"default":"hallo","typ":"Any","name":"keyarg1"},
          {"default":"33","typ":"Int64","name":"lol2"}
        ],
        "arguments":[
          {"typ":"BigInt","name":"deine"},
          {"typ":"Float32","name":"Mama"},
          {"typ":"Any","name":"ist"},
          {"default":"open(\"dolla.cash\")","typ":"IOStream","name":"defaults"}
          ],
        "name":"janoli"
      },
      "author":"Simon Popanisch",
      "documentation":"feels good maan...",
      "newVersion":true,
      "code":"mad code"}
    }""".stripMargin
}