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

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import edu.berkeley.guir.prefuse.graph.DefaultEdge;
import edu.berkeley.guir.prefuse.graph.DefaultTree;
import edu.berkeley.guir.prefuse.graph.DefaultTreeNode;
import edu.berkeley.guir.prefuse.graph.Edge;
import edu.berkeley.guir.prefuse.graph.Node;
import edu.berkeley.guir.prefuse.graph.Tree;
import edu.berkeley.guir.prefuse.graph.TreeNode;

import edu.berkeley.guir.prefuse.graph.io.AbstractTreeReader;
import edu.berkeley.guir.prefuse.graph.io.TreeReader;

/**
 * Reads in a tree from an XGMML-format XML file.
 * See <a href="http://www.cs.rpi.edu/~puninj/XGMML/">
 * www.cs.rpi.edu/~puninj/XGMML/</a>
 * for a description of the XGMML format.
 * 
 * @version 1.0
 * @author <a href="http://jheer.org">Jeffrey Heer</a> prefuse(AT)jheer.org
 */
public class XebeceXMLTreeReader extends AbstractTreeReader
    implements TreeReader {

	protected Class NODE_TYPE = XebeceTreeNode.class;

	/**
	 * @see edu.berkeley.guir.prefuse.graph.io.GraphReader#loadGraph(java.io.InputStream)
	 */
	public Tree loadTree(InputStream is) throws IOException {
		try {		
			XMLTreeHandler handler    = new XMLTreeHandler();
			SAXParserFactory factory   = SAXParserFactory.newInstance();
			SAXParser        saxParser = factory.newSAXParser();
			saxParser.parse(is, handler);
			return handler.getTree();
		} catch ( SAXException se ) {
			se.printStackTrace();
		} catch ( ParserConfigurationException pce ) {
			pce.printStackTrace();
		} 
		return null;
	} //
	
	/**
	 * Helper class that performs XML parsing of graph files using
	 * SAX (the Simple API for XML).
	 */
	public class XMLTreeHandler extends DefaultHandler {
		
		public static final String NODE   = "node";
		public static final String EDGE   = "edge";
		public static final String ATT    = "att";
		public static final String ID     = "id";
		public static final String LABEL  = "label";
		public static final String SOURCE = "source";
		public static final String TARGET = "target";
		public static final String TYPE   = "type";
		public static final String NAME   = "name";
		public static final String VALUE  = "value";
		public static final String LIST   = "list";
		
		private Tree m_tree = null;
		private HashMap m_nodeMap = new HashMap();
		private Node m_activeNode = null;
		private Edge m_activeEdge = null;
		private boolean m_directed = false;
		
		private Locator m_locator;
		
		private boolean inNode, inEdge;
		
		public void setDocumentLocator(Locator locator) {
			m_locator = locator;
		} //
		
		public void startDocument() {
			m_tree = null;
			m_nodeMap.clear();
		} //
		
		public void endDocument() {
			// construct graph
			//DefaultTreeNode root = (DefaultTreeNode)m_nodeMap.values().iterator().next();
			//while ( root.getParent() != null ) {
			//	root = root.getParent();
			//}
			DefaultTreeNode root = (DefaultTreeNode)m_nodeMap.get("1");
			m_tree = new DefaultTree(root);
		} //
		
		public void endElement(String namespaceURI, String localName, String qName) {
			if ( qName.equals(NODE) ) {
				m_activeNode = null;
				inNode = false;
			} else if ( qName.equals(EDGE) ) {
				m_activeEdge = null;
				inEdge = false;
			}
		} //
		
		public void startElement(String namespaceURI, String localName, String qName, Attributes atts) {
			if ( qName.equals(NODE) ) {
				// parse a node element
				Node n = parseNode(atts);
				m_activeNode = n;
				inNode = true;
			} else if ( qName.equals(EDGE) ) {
				// parse an edge element
				Edge e = parseEdge(atts);
				m_activeEdge = e;
				inEdge = true;
			} else if ( qName.equals(ATT) ) {
				// parse an attribute
				parseAttribute(atts);
			}
		} //
		
		protected Node parseNode(Attributes atts) {
			String alName;
			String id = null;
			for ( int i = 0; i < atts.getLength(); i++ ) {
				if ( atts.getQName(i).equals(ID) ) {
					id = atts.getValue(i);
				}
			}
			if ( id == null ) {
				System.err.println("Node missing id");
				return null;
			}

			Node n = null;
			try {
				n = (Node)NODE_TYPE.newInstance();
			} catch ( Exception e ) {
				throw new RuntimeException(e);
			}
			n.setAttribute(ID,id.toString());
			m_nodeMap.put(id, n);

			for ( int i = 0; i < atts.getLength(); i++ ) {
				alName = atts.getQName(i);
				if ( !alName.equals(ID) ) {
					n.setAttribute(alName, atts.getValue(i));
				}
			}
			return n;
		} //
		
		protected Edge parseEdge(Attributes atts) {
			String alName;
			String source = null, target = null;

			for ( int i = 0; i < atts.getLength(); i++ ) {
				alName = atts.getQName(i);
				if ( alName.equals(SOURCE) ) {
					source = atts.getValue(i);
				} else if ( alName.equals(TARGET) ) {
					target = atts.getValue(i);
				}
			}

			TreeNode s = (TreeNode)m_nodeMap.get(source);
			TreeNode t = (TreeNode)m_nodeMap.get(target);

			if ( source == null || target == null || s == null || t == null ) {
				System.err.println("Edge missing source or target!"
					+ " lineno: " + m_locator.getLineNumber()
					+ " source = " + source
					+ " target = " + target);
				return null;
			}

			Edge e = new DefaultEdge(s,t,m_directed);
			s.addChild(e);
			return e;
		} //
		
		protected void parseAttribute(Attributes atts) {
			String alName, type = null, name = null, value = null;
			for ( int i = 0; i < atts.getLength(); i++ ) {
				alName = atts.getQName(i);
				if ( alName.equals(TYPE) ) {
					type = atts.getValue(i);
				} else if ( alName.equals(NAME) ) {
					name = atts.getValue(i);
				} else if ( alName.equals(VALUE) ) {
					value = atts.getValue(i);
				}
			}
			if ( (type != null && type.equals(LIST)) ||
					name == null || value == null ) {
				System.err.println("Attribute under-specified");
				return;
			}

			if ( inNode ) {
				m_activeNode.setAttribute(name, value);
			} else if ( inEdge ) {
				m_activeEdge.setAttribute(name, value);
			}
		} //
		
		public Tree getTree() {
			return m_tree;
		} //
		
	} // end of inner class XMLTreeHandler

} // end of class XMLTreeReader
