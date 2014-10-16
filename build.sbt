name          := "Bachelorarbeit Simon und Jannis"

version       := "0.1"

scalaVersion  := "2.10.4"

sbtVersion    := "0.13.0"

fork := true

resolvers ++= {
  Seq(
    "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/",
    "spray repo"          at "http://repo.spray.io"
  )
}

unmanagedJars in Compile += Attributed.blank(file(System.getenv("JAVA_HOME") + "/jre/lib/jfxrt.jar"))

// For grizzled
//seq(bintrayResolverSettings:_*)

libraryDependencies ++= {
  val scalaTestVers = "2.1.0"
  val configVers    = "1.2.0"
  val slf4jVers     = "1.7.6"
  val grizzledVers  = "1.0.1"
  val akkaVers      = "2.3.2"
  val logbackVers   = "1.0.13"
  val titanVers     = "0.5.0"
  val parboiledVers = "1.1.5"
  val sprayVers     = "1.3.1"
  Seq(
  	"org.scalatest"           %%  "scalatest"             % scalaTestVers,
    "com.typesafe"            %   "config"                % configVers,
    "joda-time"               %   "joda-time"             % "2.1",
    // Dependencies for logging and legacy-logging components
    "org.slf4j"               %   "slf4j-api"             % slf4jVers,
    //"org.slf4j"               %   "slf4j-simple"          % slf4jVers,
    "org.slf4j"               %   "jcl-over-slf4j"        % slf4jVers,
    "org.clapper"             %%  "grizzled-slf4j"        % grizzledVers,
    "ch.qos.logback"          %   "logback-classic"       % logbackVers     % "runtime",
    "com.thinkaurelius.titan" %   "titan-core"            % titanVers,
    "com.thinkaurelius.titan" %   "titan-berkeleyje"      % titanVers,
    "com.thinkaurelius.titan" %   "titan-es"              % titanVers,
		"com.typesafe.akka"       %%  "akka-actor"            % akkaVers,
    "com.typesafe.akka"       %%  "akka-testkit"          % akkaVers        % "test",
    "com.typesafe.akka"       %%  "akka-slf4j"            % akkaVers,
    "org.parboiled"           %   "parboiled-core"        % parboiledVers,
    "org.parboiled"           %%   "parboiled-scala"      % parboiledVers,
    "io.spray"                %   "spray-can"             % sprayVers,
		"org.scalafx" 						%%  "scalafx"               % "1.0.0-R8"
  )
}

scalacOptions ++= Seq(
  "-unchecked",
  "-deprecation",
  "-Xlint",
  "-Ywarn-dead-code",
  "-language:_",
  "-target:jvm-1.7",
  "-encoding", "UTF-8"
)

javaOptions := Seq(
	"-Dmx=2048M",
	"-Dconfig.resource=/dev.conf"
 )

ivyXML := 
  <dependencies>
    <exclude org="log4j" name="log4j" />
    <exclude org="commons-logging" name="commons-logging" />
    <exclude org="org.slf4j" name="slf4j-log4j12" />
  </dependencies>
