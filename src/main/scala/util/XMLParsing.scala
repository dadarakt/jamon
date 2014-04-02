package util

/**
 * Provides functionality to parse  XML to extract queries and functions.
 */


import scala.xml.{XML,Node}
import java.io.File
import scala.util.control.NonFatal
import grizzled.slf4j.Logging
import XMLConstantsJulia._

object XMLParsing extends Logging {

	/**
	 * Opens and XML from file or takes the string as the xml 
	 */
	def loafFunctions(input: String) = {
		getFunctions(loadXML(input))
	}


	/**
	 * Input could either be a path or  a xml as a string, handle them generically.
	 * TODO make this work for partially correct input as well.
	 */
	def loadXML(input: String): Node = {
		//Check whether the input could be a filename or if it is an xml itself
		try {
			val jFile = new File(input)				
			val xmlFromFile = XML.loadFile(jFile)	
			info(s"Reading XML from file $input")
			xmlFromFile
		} catch {
			case NonFatal(e) => {
				info("Reading XML from a string")
				XML.loadString(input)				
			}
		}
	}


	/**
	 * Returns of sequence of all the functions .  Can be set to extract functions from all levels of the xml
	 * or just from the toplevel.. TODO This might eventually lead to the case, that functions that are nested
	 * into one another which means that the output will be nested at well.
	 */
 	def getFunctions(xml: Node, allLevels: Boolean = false): List[Node] = {		
 		/**
 		 * Recursive helper to find all expression which have the head 'function'.
 		 * Tries to find functions on all nested levels.
 		 */
 		def getFunAcc(node: Node, allLevels: Boolean, acc: List[Node]): List[Node] = {
 			// All expressions one level down
 			val expressions = node \ Expr
 			var newAcc = collection.mutable.MutableList[Node]()

 			expressions foreach {
 				elem => {
 					elem.attribute("head") match {
 						case Some(content) => {
 							if(content.toString == Function){
 								//Add this element to the list of functions we found
 								newAcc += elem	
 							}	
 						}
 						case None => {
 							error("There were parts in the XML that cannot be parsed.")
 						}
 					}			
 				}
 				newAcc ++ getFunAcc(elem, allLevels, acc)
 			}		
 			newAcc.toList
 		}
 		getFunAcc(xml, true, List[Node]())
 	}	
 }

