package actors


/**
 * Boolean semantics for messages, use this on case objects that might be sent to/from actors
 * User: jannis
 * Date: 12/6/13
 * Time: 9:52 AM
 */
trait BooleanSemantics {
  import BooleanSemantics._

  type inverseType <: BooleanSemantics

  def inverse: inverseType

  def unary_! = inverse

  def ||[T <: BooleanSemantics](right: T) = {
    (this, right) match {
      case (a: Truey, _) => a
      case (_, b: Truey) => b
      case _ => this
    }
  }

  def &&[T <: BooleanSemantics](right: T) = {
    (this, right) match {
      case (a: Falsy, _) => a
      case (_, b: Falsy) => b
      case _ => this
    }
  }

  def asBoolean: Boolean

}

object BooleanSemantics {

  trait Truey extends BooleanSemantics {
    override val asBoolean = true
  }

  trait Falsy extends BooleanSemantics {
    override val asBoolean = false
  }

}