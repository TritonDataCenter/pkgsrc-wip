/**
 *  Copyright 2005 Roman Kennke
 *
 *  This file is part of Xebeche.
 *
 *  Xebeche is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  Xebeche is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Xebeche; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

package org.kennke.xebece;

import java.io.OutputStream;
import java.io.IOException;


import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;

import javax.xml.transform.dom.DOMSource;

import javax.xml.transform.stream.StreamResult;

import edu.berkeley.guir.prefuse.graph.Graph;
import edu.berkeley.guir.prefuse.graph.Tree;
import edu.berkeley.guir.prefuse.graph.io.XMLGraphWriter;

import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * Serializes Xebece documents into stream(s).
 *
 * @author Roman Kennke
 */
public class XebeceDocumentSerializer {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /**
     * Serializes the Xebece document <code>calDoc</code> into a byte
     * array.
     *
     * @param calDoc the document to serialize
     * @param out the output stream into which we write the data
     * @param mapping the mapping from node->id to use
     */
    public final void serializeOntoData
        (final XebeceDocument calDoc,
         final OutputStream out,
         final Map mapping) {

        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = dbf.newDocumentBuilder();
            DOMImplementation domImpl = builder.getDOMImplementation();
            Document doc = domImpl.createDocument(null, "ontodata", null);

            Element root = doc.getDocumentElement();
            org.w3c.dom.Node imageSettingsNode =
                calDoc.getBackgroundImageSettings().getDOMNode(doc);
            root.appendChild(imageSettingsNode);

            // serialize view configuration
            Element vcEl = doc.createElement("viewConfig");
            ViewConfigurationModel vc = calDoc.getViewConfiguration();

            if (vc.getEdgeType() == EdgeType.LINE_EDGE) {
                vcEl.setAttribute("edgeType", "line");
            } else if (vc.getEdgeType() == EdgeType.CURVE_EDGE) {
                vcEl.setAttribute("edgeType", "curve");
            }

            if (vc.getLayout() == GraphLayout.BALLOON_TREE_LAYOUT) {
                vcEl.setAttribute("layout", "balloonTreeLayout");
            } else if (vc.getLayout() == GraphLayout.INDENTED_TREE_LAYOUT) {
                vcEl.setAttribute("layout", "indentedTreeLayout");
            } else if (vc.getLayout() == GraphLayout.RADIAL_TREE_LAYOUT) {
                vcEl.setAttribute("layout", "radialTreeLayout");
            } else if (vc.getLayout() == GraphLayout.FORCE_DIRECTED_LAYOUT) {
                vcEl.setAttribute("layout", "forceDirectedLayout");
            } else if (vc.getLayout() == GraphLayout.RANDOM_LAYOUT) {
                vcEl.setAttribute("layout", "randomLayout");
            } else if (vc.getLayout() == GraphLayout.VERTICAL_TREE_LAYOUT) {
                vcEl.setAttribute("layout", "verticalTreeLayout");
            } else if
                (vc.getLayout() == GraphLayout.SQUARIFIED_TREE_MAP_LAYOUT) {
                vcEl.setAttribute("layout", "squarifiedTreeMapLayout");
            } else if (vc.getLayout() == GraphLayout.TOP_DOWN_TREE_LAYOUT) {
                vcEl.setAttribute("layout", "topDownTreeLayout");
            }


            if (vc.getColorFunction() == NodeColorFunction.RED_BLUE) {
                vcEl.setAttribute("nodeColor", "redBlue");
            } else if (vc.getColorFunction() == NodeColorFunction.BLUE_GRAY) {
                vcEl.setAttribute("nodeColor", "blueGray");
            } else if (vc.getColorFunction() == NodeColorFunction.YELLOW_BLUE) {
                vcEl.setAttribute("nodeColor", "yellowBlue");
            } else if (vc.getColorFunction() == NodeColorFunction.MANUAL) {
                vcEl.setAttribute("nodeColor", "manual");
            }

            double dividerLocation = vc.getDividerLocation();
            vcEl.setAttribute("dividerLocation",
                              String.valueOf(dividerLocation));

            root.appendChild(vcEl);
            // end serialize view config


            // serialize node pages
            org.w3c.dom.Element pagesNode = doc.createElement("pages");

            Tree tree = calDoc.getTree();
            Iterator nodesIter = tree.getNodes();
            while (nodesIter.hasNext()) {
                XebeceTreeNode node = (XebeceTreeNode) nodesIter.next();
                NodePageModel nodePage = node.getNodePage();
		if (nodePage == null) {
		    nodePage = new NodePageModel();
		}
                Element nodePageNode = (Element) nodePage.getDOMNode(doc);

                // find ID and attach this to the serialized node
                Integer idObj = (Integer) mapping.get(node);
                nodePageNode.setAttribute("id", idObj.toString());
                pagesNode.appendChild(nodePageNode);
            }
            root.appendChild(pagesNode);


            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(out);
            TransformerFactory tf = TransformerFactory.newInstance();
            Transformer transformer = tf.newTransformer();
            transformer.transform(source, result);

        } catch (ParserConfigurationException ex) {
            log.log(Level.SEVERE, "XML parser could not be configured", ex);
            System.exit(0);
        } catch (TransformerConfigurationException ex) {
            log.log(Level.SEVERE, "XML parser could not be configured", ex);
            System.exit(0);
        } catch (TransformerException ex) {
            log.log(Level.SEVERE, "XML parser could not be configured", ex);
            System.exit(0);
        }

    }

    /**
     * Serializes a graph into a byte stream as XML. The nodes of the graph
     * are given IDs for their node pages. These IDs and the associated nodes
     * are returned in a mapping (node->id) for later use in
     * #serializeOntoData.
     *
     * @param graph the graph to serialize
     * @param out the stream to serialize into
     *
     * @return the node->Id mapping for later use in #serializeOntoData
     *
     * @throws IOException if IO errors occur
     */
    public final Map serializeGraph(final Graph graph, final OutputStream out)
        throws IOException {

        Map mapping = new HashMap();
        Iterator nodes = graph.getNodes();
        int id = 0;
        while (nodes.hasNext()) {
            XebeceTreeNode node = (XebeceTreeNode) nodes.next();
            id++;
            Integer idObj = new Integer(id);
            node.setAttribute(XebeceTreeNode.ATTR_NODE_PAGE_ID,
                              idObj.toString());
            mapping.put(node, idObj);
        }

        // output tree file
        XMLGraphWriter ser = new XMLGraphWriter();
        ser.writeGraph(graph, out);

        return mapping;
    }
}
