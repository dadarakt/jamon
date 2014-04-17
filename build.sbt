name := "Bachelorarbeit Simon und Jannis"

version := "0.1"

scalaVersion := "2.10.3"

sbtVersion := "0.13.0"

resolvers += "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/"

libraryDependencies ++= {
  val slf4jVersion = "1.7.6"
  val akkaVersion = "2.3.2"
  Seq(
  	"org.scalatest" % "scalatest_2.10" % "2.1.0" % "test",
    "com.typesafe" % "config" % "1.2.0",
    "org.slf4j" % "slf4j-api" % slf4jVersion,
    "org.slf4j" % "jcl-over-slf4j" % slf4jVersion,
    "org.slf4j" % "log4j-over-slf4j" % slf4jVersion,
    "org.clapper" %% "grizzled-slf4j" % "1.0.1",
    "ch.qos.logback" % "logback-classic" % "1.0.13",
		"com.thinkaurelius.titan" % "titan-all" % "0.4.2", 
		"com.typesafe.akka" %% "akka-actor" % akkaVersion,
    "com.typesafe.akka" %% "akka-testkit"  % akkaVersion % "test"
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

ivyXML := 
  <dependencies>
    <exclude org="log4j" name="log4j" />
    <exclude org="commons-logging" name="commons-logging" />
    <exclude org="org.slf4j" name="slf4j-log4j12" />
  </dependencies>

