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

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Stroke;
import java.awt.geom.Point2D;

import edu.berkeley.guir.prefuse.EdgeItem;
import edu.berkeley.guir.prefuse.VisualItem;

import edu.berkeley.guir.prefuse.render.DefaultEdgeRenderer;

/**
 * The edge render for Xebece trees. This subclasses
 * {@link DefaultEdgeRenderer} and modifies the stroke and curving of
 * it.
 *
 * @author Roman Kennke
 */
public class XebeceEdgeRenderer extends DefaultEdgeRenderer {

    /** The stroke for edges. */
    private static final BasicStroke STROKE1 = new BasicStroke(1.0F);

    public XebeceEdgeRenderer() {
        super();
        setRenderType(RENDER_TYPE_DRAW);
    }

    /**
     * Calculates the curve control points.
     * This modifies the original curving so that it is somewhat smoother.
     *
     * @param eitem the EdgeItem for which we calculate the control points
     * @param cp the control points
     * @param x1 the X coordinate of the first point
     * @param y1 the Y coordinate of the first point
     * @param x2 the X coordinate of the second point
     * @param y2 the Y coordinate of the second point
     */
    protected final void getCurveControlPoints(final EdgeItem eitem,
                                               final Point2D[] cp,
                                               final double x1,
                                               final double y1,
                                               final double x2,
                                               final double y2) {

        double dx = x2 - x1, dy = y2 - y1;
        //        cp[0].setLocation(x1+2*dx/3,y1);
        cp[0].setLocation(x1 + dx / 2, y1);
        cp[1].setLocation(x2 - dx / 8, y2 - dy / 8);
    } //

    /**
     * Returns the stroke that is used for drawing the edges.
     *
     * @param item the item for which we determine the stroke
     *
     * @return the stroke that is used for drawing the edges
     */
    protected final Stroke getStroke(final VisualItem item) {
        item.setColor(Color.gray);
        //item.setFillColor(Color.lightGray);
        return STROKE1;
    }

}
