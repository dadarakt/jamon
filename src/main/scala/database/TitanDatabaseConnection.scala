package database

/**
 * @author dadarakt
 * Class used to open existing databases or create a new one, if desired.
 */

import com.thinkaurelius.titan.core.{TitanFactory, TitanGraph}
import com.thinkaurelius.titan.graphdb.configuration.GraphDatabaseConfiguration
import com.thinkaurelius.titan.core.attribute.Geoshape
import com.tinkerpop.blueprints.Edge
import com.tinkerpop.blueprints.Vertex
import com.tinkerpop.blueprints.util.ElementHelper
import scala.collection.JavaConversions._
import org.apache.commons.configuration.BaseConfiguration
import com.typesafe.config.ConfigFactory
// Error handling and logging
import scala.util.{Try, Success, Failure}
import grizzled.slf4j.Logging
import scala.util.control.NonFatal

import com.thinkaurelius.titan.core.attribute.Cmp._



