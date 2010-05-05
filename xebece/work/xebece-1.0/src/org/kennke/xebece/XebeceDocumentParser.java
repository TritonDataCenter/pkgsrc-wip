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

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import java.net.URL;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import edu.berkeley.guir.prefuse.graph.Tree;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import org.xml.sax.SAXException;

/**
 * Parses a Xebece document.
 *
 * @author Roman Kennke
 */
public class XebeceDocumentParser {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The application model. */
    private Context model;

    /**
     * Creates a new instance of XebeceDocumentParser.
     *
     * @param newModel the application model
     */
    public XebeceDocumentParser(final Context newModel) {
        model = newModel;
    }

    /**
     * Parses a Xebece document.
     *
     * @param treeFile the tree.xml file
     * @param dataFile the ontodate.xml file
     *
     * @return the parsed document
     */
    public final XebeceDocument
        parseXebeceDocument(final File treeFile, final File dataFile) {

        try {
            FileInputStream treeStream = new FileInputStream(treeFile);
            FileInputStream dataStream = new FileInputStream(dataFile);

            return parseXebeceDocument(treeStream, dataStream);
        } catch (FileNotFoundException ex) {
            log.throwing("org.kennke.xebece.XebeceDocumentParser",
                         "parseXebeceDocument", ex);
            return null;
        }

    }

    /**
     * Parses a Xebece document from URLs.
     *
     * @param treeUrl the tree.xml URL
     * @param dataUrl the ontodate.xml URL
     *
     * @return the parsed document
     */
    public final XebeceDocument
        parseXebeceDocument(final URL treeUrl, final URL dataUrl) {

        try {
            InputStream treeStream = treeUrl.openStream();
            InputStream dataStream = dataUrl.openStream();
            return parseXebeceDocument(treeStream, dataStream);
        } catch (IOException ex) {
            log.throwing("org.kennke.xebece.XebeceDocumentParser",
                         "parseXebeceDocument", ex);
            return null;
        }
    }

    /**
     * Parses a Xebece document from InputStreams.
     *
     * @param treeStream the tree.xml InputStream
     * @param dataStream the ontodata.xml InputStream
     *
     * @return the parsed document
     */
    public final XebeceDocument
        parseXebeceDocument(final InputStream treeStream,
                               final InputStream dataStream) {


        XebeceDocument calDoc = new XebeceDocument(model);

        try {

            // parse in tree
            XebeceXMLTreeReader treeParser = new XebeceXMLTreeReader();
            Tree tree = treeParser.loadTree(treeStream);
            calDoc.setTree(tree);
            log.finer("finished set new tree");


            // check nodes for pageIds and store them in map
            Map mapping = new HashMap();
            Iterator nodes = tree.getNodes();
            while (nodes.hasNext()) {
                XebeceTreeNode node = (XebeceTreeNode) nodes.next();
                String idStr = node.getAttribute
                    (XebeceTreeNode.ATTR_NODE_PAGE_ID);
                try {
                    Integer idObj = new Integer(idStr);
                    mapping.put(idObj, node);
                } catch (NumberFormatException ex) {
                    log.warning("found page without ID, possibly corrupted"
                                + " data file");
                }
            }

            // parse in node pages
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = dbf.newDocumentBuilder();
            Document ontoData = builder.parse(dataStream);

            Element root = ontoData.getDocumentElement();


            // parse view configuration
            NodeList viewConfigEls = root.getElementsByTagName("viewConfig");
            if (viewConfigEls.getLength() > 0) {
                ViewConfigurationModel vc = new ViewConfigurationModel();
		//calDoc.getViewConfiguration();
                Element viewConfigEl = (Element) viewConfigEls.item(0);

                String edgeType = viewConfigEl.getAttribute("edgeType");
                if (edgeType.equals("line")) {
                    vc.setEdgeType(EdgeType.LINE_EDGE);
                } else {
                    vc.setEdgeType(EdgeType.CURVE_EDGE);
                }

                String layout = viewConfigEl.getAttribute("layout");
                if (layout.equals("balloonTreeLayout")) {
                    vc.setLayout(GraphLayout.BALLOON_TREE_LAYOUT);
                } else if (layout.equals("indentedTreeLayout")) {
                    vc.setLayout(GraphLayout.INDENTED_TREE_LAYOUT);
                } else if (layout.equals("radialTreeLayout")) {
                    vc.setLayout(GraphLayout.RADIAL_TREE_LAYOUT);
                } else if (layout.equals("forceDirectedLayout")) {
                    vc.setLayout(GraphLayout.FORCE_DIRECTED_LAYOUT);
                } else if (layout.equals("randomLayout")) {
                    vc.setLayout(GraphLayout.RANDOM_LAYOUT);
                } else if (layout.equals("verticalTreeLayout")) {
                    vc.setLayout(GraphLayout.VERTICAL_TREE_LAYOUT);
                } else if (layout.equals("squarifiedTreeMapLayout")) {
                    vc.setLayout(GraphLayout.SQUARIFIED_TREE_MAP_LAYOUT);
                } else if (layout.equals("topDownTreeLayout")) {
                    vc.setLayout(GraphLayout.TOP_DOWN_TREE_LAYOUT);
                } else {
                    vc.setLayout(GraphLayout.RADIAL_TREE_LAYOUT);
                }

                String nodeColor = viewConfigEl.getAttribute("nodeColor");
                if (nodeColor.equals("redBlue")) {
                    vc.setColorFunction(NodeColorFunction.RED_BLUE);
                } else if (nodeColor.equals("blueGray")) {
                    vc.setColorFunction(NodeColorFunction.BLUE_GRAY);
                } else if (nodeColor.equals("yellowBlue")) {
                    vc.setColorFunction(NodeColorFunction.YELLOW_BLUE);
                } else {
                    vc.setColorFunction(NodeColorFunction.MANUAL);
                }

                try {
                    String dividerLocationStr =
                        viewConfigEl.getAttribute("dividerLocation");
                    double dividerLocation =
                        Double.parseDouble(dividerLocationStr);
                    vc.setDividerLocation(dividerLocation);
                } catch (NumberFormatException ex) {
                    log.warning("dividerLocation cannot be parsed");
                }
                calDoc.setViewConfiguration(vc);
            }


            // parse node pages
            Node pagesEl = root.getElementsByTagName("pages").item(0);

            NodeList children = pagesEl.getChildNodes();

            for (int i = 0; i < children.getLength(); i++) {

                Node childNode = children.item(i);

                if (childNode.getNodeType() == Node.ELEMENT_NODE) {

                    // parse NodePage
                    Element el = (Element) childNode;
                    NodePageModel nodePage = new NodePageModel(model);
                    nodePage.setDOMNode(el);

                    // find node and associate NodePage with node
                    String id = el.getAttribute("id");
                    Integer idObj = null;
                    try {
                        idObj = new Integer(id);
                        XebeceTreeNode node =
                            (XebeceTreeNode) mapping.get(idObj);
                        if (node != null) {
                            node.setNodePage(nodePage);
                        } else {
                            log.warning("found presentation page, but no node"
                                        + " for it, possibly corrupted data"
                                        + " file");
                        }
                    } catch (NumberFormatException ex) {
                        log.warning("found page without ID, possibly"
                                 + " corrupted data file");
                    }
                }
            }

            calDoc.setTree(tree);

            // extract background image information
            ImageSettings backgroundImageSettings = new ImageSettings();
            NodeList imageEls = root.getElementsByTagName("imageSettings");
            if (imageEls.getLength() > 0) {

                Element imageEl = (Element) imageEls.item(0);
                backgroundImageSettings.setDOMNode(imageEl, model);
            } else {
                backgroundImageSettings.setImageFile(null);
                backgroundImageSettings
                    .setRenderType(RenderType.PRESERVE_RELATIONS);
            }
            calDoc.setBackgroundImageSettings(backgroundImageSettings);
        } catch (FileNotFoundException ex) {
            log.throwing("org.kennke.xebece.XebeceDocumentParser",
                         "parseXebeceDocument", ex);
        } catch (IOException ex) {
            log.throwing("org.kennke.xebece.XebeceDocumentParser",
                         "parseXebeceDocument", ex);
        } catch (ParserConfigurationException ex) {
            log.throwing("org.kennke.xebece.XebeceDocumentParser",
                         "parseXebeceDocument", ex);
        } catch (SAXException ex) {
            log.throwing("org.kennke.xebece.XebeceDocumentParser",
                         "parseXebeceDocument", ex);
        }
        return calDoc;

    }
}
