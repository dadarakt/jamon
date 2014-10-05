package actors

import database.DataBaseInteractions

/**
 * Created by Jannis on 10/5/14.
 */

/**
 * Describes the interactions users can make with the system. Abstracts over all implementation details.
 * It is agnostic to the backend and the client. Communications are done via serialized data formats only.
 * TODO statically describe these data formats!
 */
trait UserInteractions {

  // Needs the database-interactions to make the requests
  this: DataBaseInteractions =>

  //<<<<<<< Functions to FIND things >>>>>>>>>
  // Here only metadata are returned to show basic information on what exists in the database
  // These results will be weighted or listed (streamed)
  /**
   * Tries to find functions which match the given search term either in the name of the function OR the documentation.
   * @param searchTerm
   */
  def findFunctions(searchTerm: String): String

  /**
   *
   */
  def findFunctionsPerName(searchTerm: String): String

  /**
   * Finds methods belonging to a function with certain search parameters
   * @param functionName
   * @return
   */
  def findMethodsForFunction(functionName: String): String
  def findMethodsForFunction(functionName: String, numArguments: Int): String
  def findMethodsForFunction(functionName: String, Arguments: List[String])

  //def findBestImplementationForMethod(methodName: String): String
  // -----------------------------------------------------------------------------


  //<<<<<<< Functions to RETRIEVE things >>>>>>>>>
  // These functions actually return whole implementations
  /**
   * Retrieves the documentation for a given function name
   * @param functionName
   */
  def retrieveDocumentationForFunction(functionName: String): String

  /**
   * Retrieves the documentation for a given method
   * @param functionName The name of the function
   * @param arguments If the search should be more specific with regard to the arguments
   */
  def retrieveDocumentationForMethod(functionName: String, arguments: List[String]): String

  /**
   * Retrieves a certain version of an implementation based on the concrete id which was acquired via previous search
   * @param id
   * @return
   */
  def retrieveSourceCode(id: String): String
  // -----------------------------------------------------------------------------


  //<<<<<<< Functions to INSERT things >>>>>>>>>
  // Users should never be considered with explicit versioning and conflicts should be communicated appropriately
  def insertDocumentationForFunction(id: String, doc: String): String
  def insertDocumentatinoForMethod(id: String, doc: String): String


  def insertSourceCode(name: String, arguments: String, sourceCode: String, metadata: String): String
  def insertSourceCode(ImplementationId: String, sourceCode:String, metadata: String): String

}
