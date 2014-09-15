package prototype

/**
 * Created by jannis on 4/17/14.
 */

import akka.actor.{ActorRef, ActorSystem, Actor, Props}
import spray.can.Http
import spray.http.{HttpHeader, Uri, HttpResponse, HttpRequest}
import spray.http.HttpMethods.GET
import akka.io.{Tcp, IO}
import akka.util.Timeout
import scala.concurrent.duration._
import spray.can.Http.Bind
import com.typesafe.config.ConfigFactory
import java.net.InetSocketAddress
import grizzled.slf4j.Logging
import prototype.HttpServer.ShutdownServer

/**
 * Opens up a simple HTTP server using the config information.
 */
object SprayServerPrototype extends App{
  implicit val system = ActorSystem("ServerTest")

  // Fire up the server
  val server = system.actorOf(HttpServer.props(EchoHandlerSpray.props), "httpServer")

  // Let it run for a minute
  Thread.sleep(60 * 1000)

  // Shut it all down
  server ! ShutdownServer
  Thread.sleep(1000)
  system.shutdown()
}

/**
 * Starts a http server which presents the functionality to the outside world.
 * @param system The actor system in which the server is to run
 * @param handleProps Contains the information for the actor which is to be used to process messages
 */
class HttpServer(handleProps: Props)(implicit val system: ActorSystem)
  extends Actor
  with    Logging {

  // On start setup the connection from the configuration and try to connect to the port
  // Is also called on restart (default in 'postRestart')
  override def preStart = {
    info("Firing up the Http-server")
    // Set up the listener on the port as a child actor.
    val portListener: ActorRef = context.actorOf(EchoHandlerSpray.props, "portListener")
    val conf        = ConfigFactory.load()
    val ip          = conf.getString("connection.localIp")
    val port        = conf.getInt("connection.port")
    val bindMessage = new Bind(portListener, new InetSocketAddress(ip, port), 100, Nil, None)
    IO(Http) ! bindMessage
    info("Done setting up the Http-server")
  }

  // Some cleaning up
  override def postStop = {
    IO(Http) ! Http.Unbind
    info("Server was shut down succesfully.")
  }

  // All the stuff which is important to consider coming from the spray framework
  def receive: Receive = {
    case Http.CommandFailed =>
      error("Could not start the server! System not online!")

    case b @ Http.Bound =>
      info(s"Server is connected: $b")

    case ShutdownServer =>
      info("Shutting down the Http-server.")
      context.unwatch(self)
      context.stop(self)
  }
}

/**
 * Compagnion object
 */
object HttpServer{
  def props(handleProps: Props)(implicit system: ActorSystem): Props = Props(new HttpServer(handleProps))

  // Can be used as a message to shutdown the server cleanly
  case object ShutdownServer
}


/**
 * A simple actor which just sends back a message. This is the so called "Handler actor" which takes in dispatched
 * HTTP requests from the HttpServerConnection
 */
class EchoHandlerSpray extends Actor{
  implicit val timeout: Timeout = 1.second // for the actor 'asks'
  import context.dispatcher // ExecutionContext for the futures and scheduler

  val dickbutt = """              
                                                            m$$@$@@$@@$@@@,
                                                         n@@@%@#jC](x @@@@#@?
                                                      x@@%@$@x          ;@@@@@
                                                    $@#@@@_ .             @@@@@@.
                                            -Q@$@@@$$@                      @@@$@@
                                         ($@@@%$@@$@@?.                     -@#@@@
                                        @@@#@@#@@@W1$@                       x@@@@+
                                       >@@@@@@&$&@$ @@                       @@#@n
                                       $@@@@@@@@@@z !@@i                      <@@$]
                                       @@@@@@@$@@@  ,$@f         x@@$@Y}       !@%r
                                       @@@@@@@$@    n#@]#@<    v@@@@@@@@@$?    ]@@c
                                       @@@@@@@B?i-_v#@@@#@    $@@@@#@@$$i@@#   1@@[
                                       {@@@&@@@@$%@#@@f      v@@@@@@@$@@  @@@U j@$x
                                       @@@     J@@@@  Jc    j@@@@@@@$@#@  t$#@.C@$1
                                      @$@L    x@%@@   ]@p   #@#$@@@@@@##  !@@@ #@@+
                                      @@8     _@@$@@@@@$@<  #@@@@@$@@@B.   $@iY$@@
                                    @@@@@@@@*(l     .       ~@@@@mI       %@  @$#@
                                   !@@@$@@@@@@@@@@@}l         @@@@@@@@@@@#h   @@@#
                                  _@@@( .I!p$@@@@@@@@@$@kJ       1&@$#@@@x   )@@@8
                                  ##@$          (tB@@$@@##@#$@ti             B#@#J
                                 z@#@_                    ;!;t###@@@U1      }@@@#
                                r@#@?                                       #@$@n
                                @@@@                                        @$@@
                               >@@@L.                                      z@@@@
                              ~$@@!                                       ]@@#@n
                              @$@#                                        ##@&Q
                             x@@@u                                        $@$@
                            I@@#U                                        @@@$
                            (@@@.                          @#          @@$;
                            [@@@                           @@@   @@<    @@@@
                            n@@@                          U@@]  @@@J    @&@x                               1aqU>
                            j@@@                          @@$>  @@@   (@@@                              J@$W#@@@t
                            J@@m                          @@}  z@@1   1@@@                             q@@$     @@M
                            J@@x                          @$. {@@@.   @@@@                            $@@@      @@@.
                            J@#Z                         v@$  @#@Z    @#@,                          Z@@$%       @@C
                            J@@Y                         k$Z  @##    {@&@,                         }@@@@        @%
                            J@@C                        f@]  >@@    i@@#n                         @@#@        i#@J
                            J@@U                        @@  X@@@    t##@                        o@@@x         @@i
                            J@@Y                        @@  @@@     z@@@  -*@#@@@@@@@@@J       Z$@@n        ~@@@
                            z@@{                        @0 {@#~     f#@@@@@$@$@@@$@@@@@$@@    @@@@ .        @@C
                            )#@$                       ;8 c@@&      j$$@l    ~jI      1w@@$@M#$@          @@@C
                            !@@#                      +@! @@@       1%@#      @@@-       >%@@@          Z@#@>
                             @@#                      ##  @$)         ,;      @#@/        @@]          !#@@*
                             W@@                      @$  @&                  uUW8@@BQx>m$@z          #@$@L
                             [@@)                   @@;    X@h            @@@@@@@%@#@@##$@@I        @@@@@j
                              @@b                 #Z        U@]            !1/_,;_(rx##@@#@#@u     i###@U_
                              ###]               @      [@t  .@v.                      .%@#@@x       #@@@@L
                              a@@@               #@@@@  @@@$ .@?                          {@@@@@         _i@$@
                              <@@@!                 @@Lj@@.;@@                  @@          ##@$@           @$f
                               >@@@~                 o@@@I                     Y@@           t#@@@   nY(  _x@#
                                @@%@                  1[ .                      cY            @@@$   .(@@@$h
                                W@@@z                                                         @@@@      @@I
                                  @@@@                                    /@@r                ?@@@       _@@
                                  .@@@@o                                  @@@c                X#$@        @@
                                    d#@@@)                                $@                  }$#@        $@
                                      @$@@@I                                                  @@#@@@f{l[#@#.
                                      @@@@#@@#I                           >@@@               p@@+Ijm@@@@@}
                         @@@)        C@#[ ;U$@@%01                         . .             ]@@@>. .
                        /@ }@#      @@@m    @@@@@@@@C<                                    @@@#
                        /@( i@#m   n@#I   x@@} }@@@@@@@#@t,                 ~@d        @@@$~
                         0@   r@@[@@Z   }@@&     .  Xq@@@@@@@@@@n             YB     &$$@
                         (@U    #@@@   ?@@              iz#@@@$@@  @@@@@&&nr?    )@@@@$ .
                          $@     J;   @@@+                  C@$@;   $@@@@@@@@@@$@@#@@@
                          @#        {$@@            ?t%dzi  @@#u   Y@@   -X0@@@$@@Y
                           o@-    Y@@@ .            @$#$@@@@@$    ;$@?
                            @@  +#@@[               @@@v##@@@Z    @@r
                            i@@@@@@[                #@$#  n}      $@
                              @@#@                  z@#@         @@xx
                                                     }@@@       @@]
                                                      @@#B     >@@
                                                      +@@@    }@@z
                                                        @$@-  @@(
                                                         L@$@@%;
                                                         .U@@@.  """

  def receive = {
    // For the registration incoming from binding
    case _: Http.Connected => sender ! Http.Register(self)

    case r @ HttpRequest(GET, Uri.Path("/ping"),header,_,_) =>
      sender() ! HttpResponse(entity = "PONG")
      // Print everyting in the header
      header.foreach((h: HttpHeader) => println(s"${h.name} -----> ${h.value}"))
      println(r.uri)

    case r @ HttpRequest(GET, Uri.Path("/simon"),header,entity,_) =>
      sender() ! HttpResponse(entity = dickbutt)
      header.foreach((h: HttpHeader) => println(s"${h.name} -----> ${h.value}"))
      println(entity)

    case HttpRequest(GET, Uri.Path("/fabian"),_,_,_) =>
      sender() ! HttpResponse(entity = dickbutt)

    case _: HttpRequest => sender ! HttpResponse(status = 404, entity = dickbutt)

      // TODO one case is the "PeerClosed" case here
      // Also "Abort" case
    case a => println(s"-------->$a")
  }
}

object EchoHandlerSpray {
  def props: Props = Props(new EchoHandlerSpray)
}



