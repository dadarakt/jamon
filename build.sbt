name          := "Bachelorarbeit Simon und Jannis"

version       := "0.1"

scalaVersion  := "2.10.3"

sbtVersion    := "0.13.0"

resolvers ++= {
  Seq(
    "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/",
    "spray repo"          at "http://repo.spray.io"
  )
}

libraryDependencies ++= {
  val scalaTestVers = "2.1.0"
  val configVers    = "1.2.0"
  val slf4jVers     = "1.7.6"
  val grizzledVers  = "1.0.1"
  val akkaVers      = "2.3.2"
  val logbackVers   = "1.0.13"
  val titanVers     = "0.4.2"
  val parboiledVers = "1.1.5"
  val sprayVers     = "1.3.1"
  Seq(
  	"org.scalatest"           %%  "scalatest"             % scalaTestVers   % "test",
    "com.typesafe"            %   "config"                % configVers,
    "org.slf4j"               %   "slf4j-api"             % slf4jVers,
    "org.slf4j"               %   "jcl-over-slf4j"        % slf4jVers,
    "org.slf4j"               %   "log4j-over-slf4j"      % slf4jVers,
    "org.clapper"             %%  "grizzled-slf4j"        % grizzledVers,
    "ch.qos.logback"          %   "logback-classic"       % logbackVers,
		"com.thinkaurelius.titan" %   "titan-all"             % titanVers,
		"com.typesafe.akka"       %%  "akka-actor"            % akkaVers,
    "com.typesafe.akka"       %%  "akka-testkit"          % akkaVers        % "test",
    "org.parboiled"           %   "parboiled-core"        % parboiledVers,
    "org.parboiled"           %%   "parboiled-scala"      % parboiledVers,
    "io.spray"                %   "spray-can"             % sprayVers,
    "io.spray"                %   "spray-http"            % sprayVers
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

net.virtualvoid.sbt.graph.Plugin.graphSettings

ivyXML := 
  <dependencies>
    <exclude org="log4j" name="log4j" />
    <exclude org="commons-logging" name="commons-logging" />
    <exclude org="org.slf4j" name="slf4j-log4j12" />
  </dependencies>

