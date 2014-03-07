name := "Bachelorarbeit Simon und Jannis"

version := "0.1"

scalaVersion := "2.10.3"

libraryDependencies ++= {
  val slf4j = "1.7.5"
  val rexster = "2.3.0"
  Seq(
  	"org.scalatest" % "scalatest_2.10" % "2.0" % "test",
    "org.slf4j" % "slf4j-api" % slf4j,
    "org.slf4j" % "jcl-over-slf4j" % slf4j,
    "org.slf4j" % "log4j-over-slf4j" % slf4j,
    "org.clapper" %% "grizzled-slf4j" % "1.0.1",
    "ch.qos.logback" % "logback-classic" % "1.0.13",
		"com.thinkaurelius.titan" % "titan-all" % "0.4.2"
	)
}

ivyXML := 
  <dependencies>
    <exclude org="log4j" name="log4j" />
    <exclude org="commons-logging" name="commons-logging" />
    <exclude org="org.slf4j" name="slf4j-log4j12" />
  </dependencies>
