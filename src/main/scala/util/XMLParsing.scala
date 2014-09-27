package util

/**
 * Provides functionality to parse  XML to extract queries and functions.
 *
 * User: jannis
 * Date: 03/20/14
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
import javax.xml.transform.stream.StreamSource
import util.JuliaTypes._


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
      import org.joda.time.format.ISODateTimeFormat
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
            juliaCode
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
 	def getFunctions(xml: Node, allLevels: Boolean = false): JuliaFunctions = {
    //  Recursive helper to find all expression which have the head 'function'. Can find nested functions.
 		def getFunAcc(node: Node, allLevels: Boolean, acc: List[Node]): List[JuliaFunction] = {
 			val expressions = node \ Expr
 			var newAcc = collection.mutable.MutableList[JuliaFunction]()
      // Find all functions on this level add them to the accumulator and descent recursively
 			expressions foreach { elem => {
        elem.attribute("head") match {
          case Some(heads) => 
            if(heads.toString == Function){
              // The first arg of an xml-function is always the signature, the second the body. Parse them.
              val args          = elem \ Args
              val signature     = parseSignature(args(0))
              val body          = args(1)
              val juliaFunction = new JuliaFunction(signature, body)
              newAcc += juliaFunction
            }

          case None => {
            throw new MalformedXMLException(s"The delivered XML was not correct. Could not parse $elem")
          }
        }
 				}
 				newAcc ++ getFunAcc(elem, allLevels, acc)
 			}		
 			newAcc.toList
 		}
    // First find all the juliaTrees given in the xml and find all the functions in them
    val juliaTrees = xml \\ JuliaTree
    JuliaFunctions(juliaTrees.flatMap(getFunAcc(_, allLevels, List[Node]())).toList)
 	}

  /**
   * Reads the signature from a node which holds it.
   * @param node The node which contains a function's signature
   */
  def parseSignature(node: Node): JuliaSignature = {
    val sig = node \ Expr
    val sigArgs = sig \ Args

    val name = sigArgs(0).attribute(Symbol) match {
      case Some(name) =>
        name.toString
      case None =>
        throw new MalformedXMLException("Function name could not be read, cannot process function!")
    }

    // The arguments are then a list of all args after the function name
    val allArguments = sigArgs.drop(1)
    // if there are arguments at all, parse them, else return an empty list
    val (arguments, keywordArguments) = if (allArguments.length > 0){
      // Decide whether this function has parameters (with default values where order does not matter)
      val maybeKeywordArguments = (allArguments(0) \ Expr)
      val keywordArguments: List[(String, String, String)] = if (maybeKeywordArguments.length > 0) {
        maybeKeywordArguments(0).attribute("head") match {
          case Some(heads) =>
            if (heads.toString == Parameters) {
              val params = maybeKeywordArguments \ Args
              (for {
                param <- params
                line = param \ Expr \ Args
                name = line(0).attribute(Symbol) match {
                  case Some(n) => n.toString
                  case None => throw new MalformedXMLException("Could not read parameter!")
                }
                str = line(1).toString
                typeValue = line(1).attributes.toString.filterNot(_ == ' ').split('=').toList
                typy = typeValue(0)
                default = typeValue(1).filterNot(_ == '\"')
              //typeValueRegex(typy,value) = line(1).toString // TODO get away from this regex, make it via split
              } yield (name, typy, default)).toList
            } else {
              println("~~~~~~> did not get any params.")
              List()
            }

          case None =>
            println("there was something else here.")
            List()
        }
      } else {
        List()
      }
      // Check if we found parameters. The rest of the list will then be arguments to the function
      val arguments = if(keywordArguments.length > 0){
        allArguments.drop(1)
      } else {
        allArguments
      }
      // Finally parse the arguments.
      val finalArguments: List[(String, String, String)] = (for {
        expr <- arguments \ Expr
      }yield parseArgument(expr)).toList

      (finalArguments, keywordArguments)
    } else {
      (List(), List())
    }
    JuliaSignature(name, arguments, keywordArguments.toSet)
  }

  /**
   * Reads an xml node which holds one argument.
   * Covers all appearing cases which there are:
   * - just a symbol with no type
   * - a symbol::type contruct
   * - a symbol = defaultValue construct
   * - a symbol::type = defaultValue construct
   *@param node
   * @return The signature for the argument
   */
  def parseArgument(node:Node): (String, String, String) = {
    // Might be just a single args or an expression of multiple args
    if(node.child.isEmpty){
      node.attribute("symbol") match {
        case Some(name) => (name.toString, "", "")
        case _ => throw new MalformedXMLException(s"Not a correct paramter name at $node")
      }
    } else {
      val args = node \ Args
      node.attribute("head") match {

        // case for an argument with default value
        case Some(kw) if kw.toString == "kw" =>
          // This is the case where we have a symbol::type = default
          if(! args(0).child.isEmpty) {
            val (name,typy,_) = parseArgument((args(0) \ Expr)(0))
            val typeValue = args(1).attributes.toString.filterNot(_ == ' ').split('=').toList

            //val typy = typeValue(0)
            val default = if(typeValue.length < 2){
              args(1).text.toString
            } else{
              typeValue(1).filterNot(_ == '\"')
            }
            (name, typy, default)
          } else {
            // First get the name of the parameter
            val name = args(0).attribute(Symbol) match {
              case Some(name) => name.toString
              case _ => throw new MalformedXMLException(s"Not a correct parameter name at $node")
            }
            // Check if this is only a string node
            val (typy, default) = if(args(1).text != "") {
              ("String",args(1).text)
            } else {
              val str = args(1).toString
              val typeValue = args(1).attributes.toString.filterNot(_ == ' ').split('=').toList
              val typy = typeValue(0)
              val default = typeValue(1).filterNot(_ == '\"')
              (typy, default)
            }
            (name, typy, default)
          }

        // Case for an argument with a type definition but no default value
        case Some(colons) if colons.toString == "::"  =>
          val name = args(0).attribute(Symbol) match {
            case Some(name) => name.toString
            case _ => throw new MalformedXMLException(s"Not a correct parameter name at $node")
          }
          val typy = args(1).attribute(Symbol) match {
            case Some(typy) => typy.toString
            case _ => throw new MalformedXMLException(s"Not a correct parameter name at $node")
          }
          (name,typy,"")

        // Case for an argument which has only a name
        case None =>
          val name = args(0).attribute(Symbol) match {
            case Some(name) => name.toString
            case _ => throw new MalformedXMLException(s"Not a correct parameter name at $node")
          }
          (name, "", "")
      }
    }
  }
 }


/**
 * Used to validate an XML against the provided schema. Mostly java sources.
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


/**
 * A needed constants to parse the xml
 */
object XMLConstantsJulia {
  val Header         = "header"
  val Body          = "body"
  val JuliaTree     = "juliaTree"
  val Expr          = "expr"
  val Function      = "function"
  val Timestamp     = "timestamp"
  val User          = "user"
  val Client        = "client"
  val Request       = "requests"
  val JuliaVersion  = "juliaVersion"
  val Parameters    = "parameters"
  val Args          = "args"
  val Symbol        = "symbol"

  // Only to be used on a single xml-line!
  val typeValueRegex = """<args\s+(\.+)="(\.+)".*""".r
}


