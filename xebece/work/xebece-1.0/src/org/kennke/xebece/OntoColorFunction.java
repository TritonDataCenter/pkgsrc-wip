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
import java.awt.Paint;

import java.util.logging.Logger;

import edu.berkeley.guir.prefuse.AggregateItem;
import edu.berkeley.guir.prefuse.EdgeItem;
import edu.berkeley.guir.prefuse.NodeItem;
import edu.berkeley.guir.prefuse.VisualItem;

import edu.berkeley.guir.prefuse.graph.TreeNode;

import edu.berkeley.guir.prefuse.action.assignment.ColorFunction;

import edu.berkeley.guir.prefuse.util.ColorMap;

/**
 * Colorizes the nodes in a Xebece tree.
 *
 * @author Roman Kennke
 */
public class OntoColorFunction extends ColorFunction {

    /** The color of an edge. */
    private Color graphEdgeColor = Color.LIGHT_GRAY;

    /** Our color map. */
    private ColorMap cmap;

    /** One color shading. */
    private ColorMap cmap1;

    /** One color shading. */
    private ColorMap cmap2;

    /** One color shading. */
    private ColorMap cmap3;

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");

    private ViewConfiguration vc;
    
    /** The maximum tree depth. */
    private int maxDepth = -1;

    /**
     * Creates a new instance of <code>OntoColorFunction</code>.
     *
     * @param thresh ???
     * @param newModel the application model
     */
    public OntoColorFunction(final int thresh, final Context newModel,
            ViewConfiguration newVc) {
        vc = newVc;
        cmap = new ColorMap
            (ColorMap.getInterpolatedMap(Color.RED, Color.BLACK), 0, thresh);
        return;
    } //

    /**
     * Returns the fill color for a given <code>VisualItem</code>.
     *
     * @param item the <code>VisualItem</code> for which we want the fill color
     *
     * @return the fill color for that item
     */
    public final Paint getFillColor(final VisualItem item) {
        if (item instanceof NodeItem) {
            if (item instanceof TreeNode) {

                XebeceTreeNode node = (XebeceTreeNode) item.getEntity();
                Color nodeColor = node.getColor();
                if (!nodeColor.equals(Color.white)) {
                    return nodeColor;
                }
                if (vc.getNodeColorFunction()
                    == NodeColorFunction.RED_BLUE) {
                    log.fine("red green mode");
                    return redGreen(node);
                } else if (vc.getNodeColorFunction()
                    == NodeColorFunction.BLUE_GRAY) {
                    log.fine("green blue mode");
                    return greenBlue(node);
                } else if (vc.getNodeColorFunction()
                           == NodeColorFunction.YELLOW_BLUE) {
                    log.fine("blue red mode");
                    return blueRed(node);
                } else {
                    log.fine("manual mode: ");

                    return node.getColor();
                }
            } else {
                return Color.WHITE;
            }
        } else if (item instanceof AggregateItem) {
            return Color.LIGHT_GRAY;
        } else if (item instanceof EdgeItem) {
            return getColor(item);
        } else {
            return Color.BLACK;
        }
    } //


    /**
     * Returns the draw color for a given <code>VisualItem</code>.
     *
     * @param item the <code>VisualItem</code> for which we want the draw color
     *
     * @return the draw color for that item
     */
    public final Paint getColor(final VisualItem item) {
        if (item.isHighlighted()) {
            return Color.BLUE;
        } else if (item instanceof NodeItem) {
            Color fillColor = (Color) getFillColor(item);
            int b = (fillColor.getBlue()
                     + fillColor.getRed()
                     + fillColor.getGreen()) / 3;
            if (b > 128) {
                return Color.darkGray;
            } else {
                return Color.lightGray;
            }
            //int d = ((NodeItem)item).getDepth();
            //return cmap.getColor(d);
        } else if (item instanceof EdgeItem) {
            EdgeItem e = (EdgeItem) item;
            if (e.isTreeEdge()) {
                int d, d1, d2;
                d1 = ((NodeItem) e.getFirstNode()).getDepth();
                d2 = ((NodeItem) e.getSecondNode()).getDepth();
                d = Math.max(d1, d2);
                return cmap.getColor(d);
            } else {
                return graphEdgeColor;
            }
        } else {
            return Color.BLACK;
        }
    } //


    /**
     * Computes a red green colorization for a given node.
     *
     * @param item the node for which we want to compute a color
     *
     * @return the color for that node
     */
    private Color redGreen(final XebeceTreeNode item) {

        // measure tree depth
        int d = getDepth(item);
        return (Color) cmap1.getColorMap()[d - 1];
    }


    /**
     * Computes a green blue colorization for a given node.
     *
     * @param item the node for which we want to compute a color
     *
     * @return the color for that node
     */
    private Color greenBlue(final XebeceTreeNode item) {

        // measure tree depth
        int d = getDepth(item);
        return (Color) cmap2.getColorMap()[d - 1];
    }

    /**
     * Computes a blue red colorization for a given node.
     *
     * @param item the node for which we want to compute a color
     *
     * @return the color for that node
     */
    private Color blueRed(final XebeceTreeNode item) {

        // measure tree depth
        int d = getDepth(item);
        return (Color) cmap3.getColorMap()[d - 1];
    }


    /**
     * Computes the depth of a node in its tree.
     *
     * @param node the node for which we want to compute the depth
     *
     * @return the depth of a node in its tree
     */
    private int getDepth(final XebeceTreeNode node) {

        int depth = 0;
        TreeNode currentNode = node;
        while (currentNode != null) {
            currentNode = currentNode.getParent();
            depth++;
        }

        int newMaxDepth = Math.max(maxDepth, depth);
        if (newMaxDepth != maxDepth) {
            maxDepth = newMaxDepth;
            rebuildColorMaps();
        }
        return depth;
    }

    /**
     * Recalculates the color maps after the tree has become deeper.
     */
    private void rebuildColorMaps() {
//         cmap1 = new ColorMap
//             (ColorMap.getInterpolatedMap(maxDepth,
//                                          new Color(209, 10, 10),
//                                          new Color(255, 243, 0)),
//              0, maxDepth);
        cmap1 = new ColorMap
            (ColorMap.getInterpolatedMap(maxDepth,
                                         new Color(222, 9, 52),
                                         new Color(51, 0, 153)),
             0, maxDepth);
        cmap2 = new ColorMap
            (ColorMap.getInterpolatedMap(maxDepth,
                                         new Color(0, 0, 104),
                                         new Color(204, 204, 255)),
             0, maxDepth);
        cmap3 = new ColorMap
            (ColorMap.getInterpolatedMap(maxDepth,
                                         new Color(255, 255, 102),
                                         new Color(0, 102, 255)),
             0, maxDepth);

    }
}


