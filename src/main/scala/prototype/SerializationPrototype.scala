package prototype

/**
 * Created by jannis on 5/6/14.
 */

import scala.pickling._
import json._

/**
 * Checks if serialization works as intended!
 */
object SerializationPrototype extends App{
  val list = List(1,2,4,5,6,7,8,10)
  val pickle = list.pickle
  val listReconstructed   = pickle.unpickle[List[Int]]
  println(pickle.value)
  println(listReconstructed)

  val json = pickle.value
  println(JSONPickle(json).unpickle[List[Int]])
}
