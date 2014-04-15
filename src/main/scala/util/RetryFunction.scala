package util


import scala.annotation.tailrec

import scala.util.{Try, Success, Failure}

/**
 * RetryFunction is a reusable trait for retrying an arbitrary closure N times.
 */
trait RetryFunction {

  /**
   * Retries the specified function `maxRetries` times.
   * @param maxRetries the max number of retries
   * @param sleepTime a milliseconds factor used for exponential backoff
   * @param func the function to try
   * @return true if function was successfully invoked, false otherwise
   */
  def retryCall(maxRetries: Int = 5, sleepTime: Long = 100)(func: => Unit): Boolean = {
    retryCallWithResult[Unit](maxRetries, sleepTime)(func) isDefined
  }

  /**
   * Uses exponential backoff to retry a function call multiple times if necessary.
   * @param maxRetries the max number of retries
   * @param sleepTime a milliseconds factor used for exponential backoff
   * @param func the function to try
   * @return Some(result) if the function was successful, false otherwise
   */
  def retryCallWithResult[T](maxRetries: Int = 5, sleepTime: Long = 100)(func: => T): Option[T] = {

    @tailrec
    def perform(func: => T,
                triesLeft: Int = maxRetries,
                lastError: Option[Throwable] = None): Option[T] =
    {
      triesLeft match {
        case 0 =>
          None
        case _ => Try(func) match {
          case Success(x) =>
            Some(x)

          // Introduce special cases for certain if things don't work out but can be recovered
          case Failure(ex) =>
            Thread.sleep(sleepTime + (maxRetries - triesLeft) * sleepTime)
            perform(func, triesLeft - 1, Some(ex))
        }
      }
    }

    perform(func)
  }
}

/**
 * Can be used for 'static' calls
 */
object RetryFunction extends RetryFunction
