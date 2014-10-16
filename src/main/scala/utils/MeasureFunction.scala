package utils

/**
 * Can be used when function calls need to be timed for testing
 */
trait MeasureFunction {
  def measureCallWithResult[T](func: => T) : (T, Long) = {
    val start = System.currentTimeMillis
    val result = func
    (result, System.currentTimeMillis - start)
  }
}

/**
 * For 'static' use
 */
object MeasureFunction extends MeasureFunction


