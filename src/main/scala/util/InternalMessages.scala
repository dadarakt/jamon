package util

/**
 * Created by Jannis on 4/8/14.
 *
 * Contains internal messenges for the actors as well as general case-classes which define datatypes
 * and structures used in the system.
 */

import scala.xml.Node

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


/**
 * Represents any piece of julia code given to the system. Can be functions or signatures, pieces of code etc.
 */
trait JuliaCode

/**
 * A set of Functions which could have been extracted from a XML file. Could also be none
 * @param functions
 */
case class JuliaFunctions(functions: List[Node] = List[Node]()) extends JuliaCode

/**
 * The general use is to have a list of requests. Could also be just one or none.
 * @param requests
 */
case class Requests(requests: List[String] = List[String]())


///////////// Exceptions ////////////////

case class MalformedXMLException(msg: String) extends Exception(msg)

