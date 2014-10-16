package database

/**
 * Created by Jannis on 5/1/14.
 */

import utils.JuliaTypes._
import spray.json._
import DefaultJsonProtocol._

/**
 * Defines the interface to the database which abstracts over the backend of a particular database.
 * The functions are meant to be used internally to answer all admissable queries of users which are
 * interfaces on the actor-level.
 * This can be seen as static methods which can be called by actors on their mixed in implementation to do
 * transactions with the database. The passed back String represents the serialized answer to the query.
 */
trait DbInteractions {

  final val defaultNumResults = 50

  /**
   * Returns all methods for the given functionName which has to be a precise match.
   * @param function The name of the function
   * @return A list of all method-signatures which belong to the function.
   */
  def findMethodsForFunction(function: String, numResults: Int = defaultNumResults): List[String]

  def insertSourceCode(source: String, funcName: String, args: List[String], author: String,
    docs: String, newImpl: Boolean = false, newVers: Boolean = false): String

  def insertSourceCode(request: InsertionRequest): String

  /**
   * Searches for the function and returns meta-information on the resulting functions.
   * TODO will be overloaded and has to return weighted results
   * @return
   */         
  def find: JuliaFunctions

  /**
   * Retrieves all funcitons which contain the given string in their name
   * @param searchTerm The string which is searched for. Case insensitive and anywhere in the name
   * @param numResults Additional parameter to limit the number of results returned. Cannot exceed 1000.
   * @return The names of the functions which contain the searchTerm as a list.
   */
  def findFunctionByName(searchTerm: String, numResults: Int = defaultNumResults): List[String]

  /**
   * Retrieves the best (after some kind of measure TODO) implementation (with its most recent version) from the graph
   * @param methodName The method (with arguments) for which the implementation is desired
   * @return A representation of the implementation
   */
  def getBestImplementationForMethod(methodName: String): String

  /**    
   * Returns the whole function, could be separated later with just returning meta-info
   * first and after that give back the whole function if desired.
   */
  def retrieve: JuliaFunctions


  // ----- Functions to insert data -----

  /**
   * Used to automatically insert a function into the database
   * @return
   */
  def insertFunction : String


  // ----- Development -----
  def dbToString: String
}

/**
 * Case class used for serialization of requests.
 * @param code
 * @param funcName
 * @param args
 * @param author
 * @param docs
 * @param newImplementation
 * @param newVersion
 */
case class InsertionRequest(signature: JuliaSignature,
                            code: String,
                            author: String              = "anonymous",
                            documentation: String       = "No documentation available",
                            newImplementation: Boolean  = false,
                            newVersion: Boolean         = false)


/**
 * Used to implicitly parse all incoming json requests to scala objects
 */
object DatabaseJsonProtocols extends DefaultJsonProtocol {
  implicit val juliaArguemntFormat    = format3(JuliaArgument.apply)
  implicit val juliaSignatureFormat   = format3(JuliaSignature)
  implicit val juliaFunctionFormat    = format2(JuliaFunction)
  implicit val insertionRequestFormat = format6(InsertionRequest)
}




