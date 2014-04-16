package database

/**
 * Created by jannis on 1/30/14.
 *
 * Describes the types of vertices and edges used in the graph. Thus nothing that is not declared
 * here should be part of the graph
 */


/**
 * Class which is used as a variable container for the properties of a node
 */
case class VertexProperties(val properties: Map[String, String])

/**
 * The object takes care of creation and storing the used properties
 */
 package object database{

  object VertexProperties extends Enumeration {
    // The properties used for the vertices in the graph
    val Name = Value("name")

    // Methods for creation and retrieval of vertices
    def apply(props: Map[String, String]) = {
      new VertexProperties(props)
    }

    def unapply(props: VertexProperties) = {
      props.properties
    }
  }
}
