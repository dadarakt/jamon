package actors

/**
 * Created by Jannis on 4/29/14.
 */

import com.thinkaurelius.titan.core.TitanGraph
import akka.actor.{Props, Actor}
import grizzled.slf4j.Logging
import spray.http.{HttpResponse, Uri, HttpRequest}
import spray.http.HttpMethods._

/**
 * First prototype for a handler which takes incoming requests and tries to interact with the Titan-Database.
 * @param graph The (Titan) graph-database
 */
class TitanDbHandlerActor(graph: TitanGraph)
  extends  Logging {

//  import database.TitanDatabaseConnection.graphToString
//
//  // All special cases we want to capture
//  def dbDependendReceive = {
//    case HttpRequest(GET, Uri.Path("/dbRequest"),_,_,_) =>
//      info("Somebody wants something from the database!")
//      val start = System.currentTimeMillis()
//      //sender() ! HttpResponse(entity = graphToString(graph))
//      info(s"Work on this request took: ${System.currentTimeMillis - start} ms.")
//  }
}

object TitanDbHandlerActor {
  //def props(graph: TitanGraph): Props = Props(new TitanDbHandlerActor(graph))

}
