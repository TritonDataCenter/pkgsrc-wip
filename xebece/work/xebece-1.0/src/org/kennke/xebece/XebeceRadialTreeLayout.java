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
 *  along with Foobar; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

package org.kennke.xebece;

import java.awt.geom.Rectangle2D;

import edu.berkeley.guir.prefusex.layout.RadialTreeLayout;

/**
 * The RadialTreeLayout modification for Xebece. The increases the radius
 * of the radial tree, so that the space is better used.
 *
 * @author Roman Kennke
 */
public class XebeceRadialTreeLayout extends RadialTreeLayout {

    /**
     * Sets the scale of the tree layout. This is used when autoscale is
     * switched on.
     *
     * @param bounds the bounds of the display area
     */
    protected final void setScale(final Rectangle2D bounds) {
        double r = Math.min(bounds.getWidth(), bounds.getHeight()) / 2.0;
        if (m_maxDepth > 0) {
            m_radiusInc = (r - 10) / m_maxDepth;
        }
    } //

}
