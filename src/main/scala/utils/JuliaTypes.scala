package utils

/**
 * Created by Jannis on 4/8/14.
 *
 * Contains internal messenges for the actors as well as general case-classes which define datatypes
 * and structures used in the system.
 */

import utils.JuliaTypes._

/**
 * The input to the system which is one piece of work. Has all needed meta-information to be used in the database later
 * on.
 * @param userTimestamp   Point in time the user posed the query.
 * @param systemTimestamp Point in time the request was received by the system.
 * @param client          Name of the client/program which created the query.
 * @param user            Name of the user if he wishes to commit.
 * @param requests         Description of the query made.
 * @param juliaVersion    Version of the language used.
 * @param juliaCode      The functions which are to be used for the query
 */
case class Query( userTimestamp: Double = System.currentTimeMillis,
                  systemTimestamp: Double = System.currentTimeMillis,
                  sender: String,
                  client: String,
                  user: String,
                  juliaVersion: String,
                  requests: Requests,
                  juliaCode: JuliaCode = JuliaFunctions()
                  ){}

object JuliaTypes {

  /**
   * The general use is to have a list of requests. Could also be just one or none.
   * @param requests
   */
  case class Requests(requests: List[String] = List[String]())


  /**
   * Marker interface for a piece of julia code given to the system. Can be functions, signatures, or pieces of code.
   */
  sealed trait JuliaCode


  /**
   * Represents a julia argument as a triplet of (symbol-)name, type, and default value.
   * (type, defaultValue, argumentName)
   */
  case class JuliaArgument(name: String, typ: String, default: Option[String])

  object JuliaArgument {
    def apply(name: String, typ: String, default: Any): JuliaArgument = JuliaArgument(name, typ, Some(default.toString))
  }


  /**
   * Represents a julia argument which does not have a name anymore as a tuple of the type and default value
   *
   */
  type JuliaAbstractArgument = (String, Option[Any])

  /**
   * Represents a body of a function as an AST parsed into XML
   */
  type JuliaCodeBody = String

  type JuliaFunctionName = String

  type JuliaMethodName = String

  type Metadata = String // TODO should become something more meaningful



  /**
   * Defines the signature which is to be used for classification of the function.
   * @param name The symbol for the function.
   * @param arguments The >ordered< list of arguments to the function.
   * @param varargs Optional variable argument list as (name, type)
   */
  case class JuliaSignature(name: String,
                            arguments: List[JuliaArgument],
                            varargs: Option[JuliaArgument])
    extends JuliaCode

  /**
   * A complete function of julia code.
   * @param signature typed signature
   * @param body xml body
   */
  case class JuliaFunction(signature: JuliaSignature, body: JuliaCodeBody)
    extends JuliaCode

  case class JuliaFunctions(functions: List[JuliaFunction] = List[JuliaFunction]())
    extends JuliaCode

}

///////////// Exceptions ////////////////

/**
 * Exception which indicates an unparsable XML input which will be rejected by the system.
 * @param msg
 */
case class MalformedXMLException(msg: String) extends Exception(msg)

