package database

/**
 * Created by Jannis on 5/1/14.
 */

import com.thinkaurelius.titan.core.TitanGraph
import grizzled.slf4j.Logging
import scala.util.{Try, Failure, Success}
import util.JuliaTypes._

/**
 * Defines the interface to the database which abstracts over the backend of a particular database.
 * The functions are meant to be used internally to answer all admissable queries of users which are
 * interfaces on the actor-level.
 * This can be seen as static methods which can be called by actors on their mixed in implementation to do
 * transactions with the database. The passed back String represents the serialized answer to the query.
 */
trait DataBaseInteractions {
  
  // ----- Functions to find things -----
  /**
   * Returns a given function with its meta-data for a precise match
   * @param signature
   */
  def getFunction(signature: JuliaSignature) // With a precise match

  /**
   * Returns a given methods with its meta-data for a precise match
   * @param signature
   */
  def getMethod(signature: JuliaSignature)

  /**
   * Returns all methods for a particular function
   * @param function
   * @return
   */
  def getMethods(function: String): String

  /**
   * Returns a given Implementation of a Method for a precise match
   * @param name
   * @return
   */
  def getImplementation(name: String): String

  /**
   * Finds the best implementation of a particular method with a given signature
   * @param meth
   * @return
   */
  def getBestImplementation(meth: String): String

  /**
   * Returns all the implementations of a given method signature
   * @param meth
   * @return
   */
  def getAllImplementations(meth: String): String

  /**
   * Searches for the function and returns meta-information on the resulting functions.
   * TODO will be overloaded and has to return weighted results
   * @return
   */         
  def find: JuliaFunctions 

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
  def insertDummyData: String
}




