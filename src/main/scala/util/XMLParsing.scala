package util

/**
 * Provides functionality to parse  XML to extract queries and functions.
 */

import scala.xml.{XML,Node}
import java.io.File
import scala.util.control.NonFatal
import grizzled.slf4j.Logging
import XMLConstantsJulia._
import org.xml.sax.InputSource
import scala.xml.parsing.NoBindingFactoryAdapter
import scala.xml.{TopScope, Elem}
import javax.xml.parsers.{SAXParserFactory, SAXParser}
import javax.xml.validation.{Schema, SchemaFactory}
import javax.xml.XMLConstants
import  javax.xml.transform.stream.StreamSource


object XMLParsing extends Logging {

  // The schema which is to be used for the queries to the system
  val factory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI)
  val inputSchema = factory.newSchema(new StreamSource(getClass.getResourceAsStream("/inputSchema.xsd")))

  
	/**
	 * Opens and XML from file or takes the string as the xml
   * @param input A string which can either be a filename or a complete xml structure
	 */
	def loadFunctions(input: String) = {
		getFunctions(loadXML(input))
	}


	/**
	 * Loads an XML form the fiven source (might be the string itself)
	 * TODO make this work for partially correct input as well.
	 */
	def loadXML(input: String, validation: Boolean = true): Node = {
		//Check whether the input could be a filename or if it is an xml itself
		try {
      //loadXMLWithValidation(input)
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
   * Loads an XML an validates it against the provided schema.
   * @param xmlFile
   */
  def loadXMLWithValidation(xmlFile: String) = {
    val source = getClass.getResourceAsStream(xmlFile)
    val xml = new SchemaAwareFactoryAdapter(inputSchema).load(source)
    //println(xml)
  }

  /**
   * Takes a XML and generates the query for the backend from it. Should abstract away all dependencies on the structure
   * of the XML in order to cope with later changes to the communication schema.
   * Will throw exception if critical elements are missing.
   * @param xml XML which is the input to our system
   * @param sender Address of the sender, where the result is supposed to go.
   * @param timestamp Point in time where the request entered the system
   */
  def generateQueryFromXML(xml: Node, sender: String, timestamp: Double = System.currentTimeMillis): Query = {
    // Try to split the given Node into the header and the body
    val head = xml \ Header
    if(head.isEmpty || head.length > 1) throw new MalformedXMLException("Could not find valid head for the query.")
    val body = xml \ Body
    if(body.isEmpty || body.length > 1) throw new MalformedXMLException("Could not find valid body of query.")
    val requests = head \ Request
    if(requests.isEmpty) throw new MalformedXMLException("There are no requests in this query")

    // Extract information. Most of the information is not necessary so there is a fall-back to defaults
      import org.joda.time.format.{ISODateTimeFormat}
      import org.joda.time.{DateTimeZone, DateTime}
      val userTimestamp = try {
      ISODateTimeFormat.dateTime.parseDateTime((head \ Timestamp).head.text).getMillis
    } catch {
      case NonFatal(e) => {
        // The format is wrong or the client did not provide meaningful time.
        warn(s"Query did not provide any timestamp, used system-intern timestamp $e")
        timestamp
      }
    }

    val client = try {
      (head \ Client).head.text
    } catch {
      case NonFatal(e) => {
        warn(s"Query did not provide a client name, $e")
        "n/a"
      }
    }

    val user = try {
      (head \ User).head.text
    } catch {
      case NonFatal(e) => {
        "anonymous"
      }
    }

    val juliaVersion = try {
      (head \ JuliaVersion).head.text
    } catch {
      case NonFatal(e) => {
        warn(s"Client has not provided a Julia version $e")
        "n/a"
      }
    }

    val juliaCode = getFunctions((body.head \ JuliaTree).head, true)

    // Create datestructure
    Query(  userTimestamp,
            timestamp,
            sender,
            client,
            user,
            juliaVersion,
            Requests((requests map {_.text}).toList),
            JuliaFunctions(juliaCode)
    )
  }


  /**
   * Reads the information containted in the header of the xml to create the right query for the backend.
   *
   * @param xml
   */
  def readHeader(xml: Node) = ???


	/**
	 * Returns of sequence of all the functions .  Can be set to extract functions from all levels of the xml
	 * or just from the toplevel.. TODO This might eventually lead to the case, that functions that are nested
	 * into one another which means that the output will be nested at well.
	 */
 	def getFunctions(xml: Node, allLevels: Boolean = false): List[Node] = {
    //  Recursive helper to find all expression which have the head 'function'.
    //  Tries to find functions on all nested levels.
 		def getFunAcc(node: Node, allLevels: Boolean, acc: List[Node]): List[Node] = {
 			// First find the julieTree and from there all the expressions in there
 			val expressions = node \ Expr
 			var newAcc = collection.mutable.MutableList[Node]()
      // Find all functions on this level and descent recursively
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

    // First find all the juliaTrees given in the xml
    val juliaTrees = xml \\ JuliaTree
    // And then find all the functions included in the trees
    juliaTrees.flatMap(getFunAcc(_, allLevels, List[Node]())).toList
 	}	
 }


/**
 * Used to validate an XML against the provided schema. Mostly java source
 * @param schema The schema to test against
 */
class SchemaAwareFactoryAdapter(schema: Schema) extends NoBindingFactoryAdapter {
  override def loadXML(source: InputSource, parser: SAXParser) = {
    val reader = parser.getXMLReader()
    val handler = schema.newValidatorHandler()
    handler.setContentHandler(this)
    reader.setContentHandler(handler)
    scopeStack.push(TopScope)
    reader.parse(source)
    scopeStack.pop
    rootElem.asInstanceOf[Elem]
  }

  override def parser: SAXParser = {
    val factory = SAXParserFactory.newInstance()
    factory.setNamespaceAware(true)
    factory.setFeature("http://xml.org/sax/features/namespace-prefixes", true)
    factory.newSAXParser()
  }
}


