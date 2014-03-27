package util

/**
 * Provides functionality to parse a query from xml
 */

import scala.xml.XML
import scala.xml.Elem
import scala.io.Source

 object XMLParsing {

 	def readFromFile(filename: String): Elem  = {
 		//val rawXML = Source.fromURL(getClass.getResource(filename)).mkString	
 		XML.load(io.Source.fromInputStream(getClass.getResource(filename)))
 	}
 	



 	
 }