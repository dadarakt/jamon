package prototype

/**
 * Created by jannis on 5/6/14.
 */

import scala.pickling._
import json._
import util.JuliaTypes

/**
 * Checks if serialization works as intended. Could be based on XML to maintain the structures in the code
 * or use the more user-friendly json notation to recreate the object given.
 */
object SerializationPrototype extends App{

  val list = List(1,2,4,5,6,7,8,10)
  val myObj = new JuliaTypes.Requests(List("Wurstwasser", "Dickbutt", "Justin Bieber"))

  val pickle = list.pickle
  val pickle2 = myObj.pickle

  println(pickle2)
  //val listReconstructed   = pickle.unpickle[List[Int]]
  //val myObjReconstructed = pickle.unpickle[String]

  val json = pickle.value
  val json2 = pickle2.value
  val time = System.currentTimeMillis()
  //println(JSONPickle(json).unpickle[List[Int]])
  val wurst  = JSONPickle(json2).unpickle[JuliaTypes.Requests] // Was genau bedeutet denn das fuer meine datenbank?
  // Ich kann es beim besten willen nicht mehr sagen denke ich
  println(s"It took ${System.currentTimeMillis() - time} ms to unpickle.")
  println(wurst)
}
