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

import java.awt.Color;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import java.util.logging.Logger;

import edu.berkeley.guir.prefuse.graph.DefaultEdge;
import edu.berkeley.guir.prefuse.graph.DefaultTreeNode;


/**
 * The model for nodes in Xebece trees. This is a subclass of
 * {@link edu.berkeley.guir.prefuse.graph.DefaultTreeNode} and adds some
 * access methods for Xebece attributes.
 *
 * @author Roman Kennke
 */
public class XebeceTreeNode extends DefaultTreeNode
    implements Cloneable {

    /** Key for node name attribute. */
    public static final String ATTR_NODE_NAME =
                                        "com.ontographics.hted.attrName";

    /** Key for node size attribute. */
    public static final String ATTR_NODE_SIZE =
                                   "com.ontographics.hted.attrSize";

    /** Key for node color attribute. */
    public static final String ATTR_NODE_COLOR =
                                   "com.ontographics.hted.attrColor";

    /** Key for node attachments attribute. */
    public static final String ATTR_NODE_ATTACHMENTS =
                                   "com.ontographics.hted.attrAttachments";

    /** Key for node page ID attribute. */
    public static final String ATTR_NODE_PAGE_ID =
                                   "com.ontographics.hted.attrPageId";


    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /** The size of the node (cached). */
    private int size;

    /** The color of the node (cached). */
    private Color color;

    /** The attachments of the node (cached). */
    private List attachments;

    /** The node page of this node. */
    private NodePageModel nodePage;

    /**
     * Creates a new instance of this node.
     */
    public XebeceTreeNode() {
        super();
        color = Color.white; //lightGray;
        size = Integer.MIN_VALUE;
        attachments = new ArrayList();
    }

    /**
     * Sets the name of the node.
     *
     * @param name the name to be set
     */
    public final synchronized void setName(final String name) {
        log.entering("org.kennke.xebece.XebeceTreeNode", "setName");
        log.finer("set name: " + name);
        setAttribute(ATTR_NODE_NAME, name);
        return;
    }

    /**
     * Returns the name of the node.
     *
     * @return the name of the node
     */
    public final synchronized String getName() {

        String name = null;
        name = getAttribute(ATTR_NODE_NAME);
        if (name == null) {
            name = "";
        }
        return name;

    }

    /**
     * Returns the size of the node.
     *
     * @return the size of the node
     */
    public final synchronized int getSize() {

        if (size == Integer.MIN_VALUE) {
            String intString = getAttribute(ATTR_NODE_SIZE);
            if (intString == null) {
                intString = "0";
            }
            size = Integer.parseInt(intString);
        }
        return size;
    }

    /**
     * Sets the size of the node.
     *
     * @param newSize the size to be set
     */
    public final synchronized void setSize(final int newSize) {

        size = newSize;
        setAttribute(ATTR_NODE_SIZE, String.valueOf(newSize));

        return;
    }


    /**
     * Returns the color of the node.
     *
     * @return the color of the node
     */
    public final synchronized Color getColor() {

        if ((color == null) || (color.equals(Color.white))) {
            String colorString = getAttribute(ATTR_NODE_COLOR);
            if (colorString == null) {
                colorString = "-1";
            }
            color = new Color(Integer.parseInt(colorString));

        }
        return color;
    }

    /**
     * Sets the color of the node.
     *
     * @param newColor the color to be set
     */
    public final void setColor(final Color newColor) {

        color = newColor;
        setAttribute(ATTR_NODE_COLOR,
                     String.valueOf(newColor.getRGB()));

        return;
    }


    /**
     * Returns the attachments of the node.
     *
     * @return the attachments of the node
     */
    public final synchronized List getAttachments() {

        if (attachments.size() == 0) {
            String atts = getAttribute(ATTR_NODE_ATTACHMENTS);
            if (atts == null) {
                atts = "";
            }
            StringTokenizer tokens = new StringTokenizer(atts, ",");

            while (tokens.hasMoreTokens()) {
                attachments.add(tokens.nextToken());
            }
        }

        return attachments;
    }

    /**
     * Adds an attachment to this nodes attachments.
     *
     * @param attachment the name of the attachment
     */
    public final void addAttachment(final String attachment) {

        attachments.add(attachment);

        String atts = getAttribute(ATTR_NODE_ATTACHMENTS);
        if (atts == null) {
            atts = attachment;
        } else {
            atts = atts + "," + attachment;
        }
        setAttribute(ATTR_NODE_ATTACHMENTS, atts);
        return;
    }

    /**
     * Removes an attachment from the list of this node's attachments.
     *
     * @param attachment the attachment to be removed
     */
    public final void removeAttachment(final String attachment) {

        attachments.remove(attachment);

        String atts = getAttribute(ATTR_NODE_ATTACHMENTS);
        StringTokenizer myAttachments = new StringTokenizer(atts, ",");
        StringBuffer buffer = new StringBuffer();

        boolean first = true;
        while (myAttachments.hasMoreTokens()) {
            String att = myAttachments.nextToken();

            if (!att.equals(attachment)) {

                if (first) {
                    first = false;
                } else {
                    buffer.append(',');
                }
                buffer.append(att);
            }
        } // end while

        setAttribute(ATTR_NODE_ATTACHMENTS, buffer.toString());

        return;
    }


    /**
     * Sets the node page for this node.
     *
     * @param newNodePage the node page to be set
     */
    public final void setNodePage(final NodePageModel newNodePage) {

        nodePage = newNodePage;

    }

    /**
     * Returns the node page for this node.
     *
     * @return the node page for this node
     */
    public final NodePageModel getNodePage() {

        log.finer("node page requested");
        return nodePage;
    }
    /**
     * Creates and returns a clone of this node.
     *
     * @return a clone of this node
     *
     * @throws CloneNotSupportedException should not be thrown by this method
     */
    public final Object clone()
        throws CloneNotSupportedException {


        XebeceTreeNode clone = new XebeceTreeNode();

        String id = getAttribute("id");
        log.finer("cloning node: " + id);
        clone.clearAttributes();

        Map attributes = getAttributes();
        attributes.remove("id");
        for (Iterator keyIter = attributes.keySet().iterator();
             keyIter.hasNext();) {
            String key = (String) keyIter.next();
            clone.setAttribute(key, (String) attributes.get(key));
        }

        if (nodePage != null) {
            clone.nodePage = (NodePageModel) nodePage.clone();
        }

        // clone children
        Iterator childNodes = getChildren();
        while (childNodes.hasNext()) {
            XebeceTreeNode child =
                (XebeceTreeNode) childNodes.next();
            clone.addChild(new DefaultEdge
                           (clone, (XebeceTreeNode) child.clone()));
        }
        return clone;

    }
}
