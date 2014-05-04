/**
 * Created by jannis on 4/26/14.
 */

import org.scalatest.FunSuite
import org.scalatest.concurrent.{ScalaFutures, Futures}
import scala.concurrent.{Await, Future}
import scala.concurrent.duration._
import akka.actor.ActorSystem
import akka.util.Timeout
import akka.pattern.ask
import akka.io.IO

import scala.util.{Failure, Success}
import spray.can.Http
import spray.http._
import HttpMethods._

/**
 * Tests the SrpayHttpServer.
 * Uses spray-can - although it might be a bit of an overkill - since it is already a dependency in the project.
 */
class HttpServerSpec extends FunSuite with ScalaFutures{

  implicit val system = ActorSystem()
  implicit val timeout = Timeout(15.seconds)
  import system.dispatcher // implicit execution context

  test("First get some random page to see if there is an internet connection possible.") {
    val url = "http://google.com"
    val (response,_) = getResponse(url)
    assert( response.status.intValue >= 200 && response.status.intValue < 400,
      s"The page returned an undesired status: ${response.status.intValue}")
  }

  test("See if the server is online for testing. Retrieve the index page and check the status."){
    val url = "http://jannis-server.no-ip.biz"
    val (response,_) = getResponse(url)
    assert( response.status.intValue >= 200 && response.status.intValue < 400,
            s"The page returned an undesired status: ${response.status.intValue}")
  }

  test("Test if the server outputs a 404 for a wrong query.") {
    val url = "http://jannis-server.no-ip.biz/test"
    val (response, _) = getResponse(url)
    assert(response.status.intValue == 404)
  }

  test("Test some other page for time comparison") {
    val url = "http://dict.cc"
    val (response, _) = getResponse(url)
    assert(response.status.intValue == 301)
  }


  //~~~~~~~~~~~~~~~~~~ HELPERS ~~~~~~~~~~~~~~~~~~~~~~~~~~//

  /**
   * Tries to get the http-response from the given url in a timely manner.
   * Also returns the time it took to make the request (Wwhich could be very slow due to the actors)
   * @param url
   * @return
   */
  def getResponse(url: String): (HttpResponse, Long) = {
    val waitTime = 10 seconds
    val start = System.currentTimeMillis()

    val response: Future[HttpResponse] =
      (IO(Http) ? HttpRequest(GET, Uri(url))).mapTo[HttpResponse]

    val answer = Await.result(response, waitTime)
    val end = System.currentTimeMillis
    val duration = end - start

    return (answer, duration)
  }

}
