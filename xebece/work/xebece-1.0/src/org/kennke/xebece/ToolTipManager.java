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

import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionListener;

import edu.berkeley.guir.prefuse.Display;
import edu.berkeley.guir.prefuse.NodeItem;
import edu.berkeley.guir.prefuse.VisualItem;

/**
 * Manages tooltips for a Prefuse Display.
 *
 * @author Roman Kennke
 */
public class ToolTipManager implements MouseMotionListener {

    /** The display for which we manage tooltips. */
    private Display display;

    /**
     * Creates a new instance of this class, and registers it with the
     * specified Display instance.
     *
     * @param newDisplay the display for which we manage tooltips
     */
    public ToolTipManager(final Display newDisplay) {

        display = newDisplay;
        display.setUseCustomTooltips(true);
        display.addMouseMotionListener(this);

    }

    /**
     * Indicates a mouse move over the display.
     *
     * @param ev the MouseEvent
     */
    public final void mouseMoved(final MouseEvent ev) {
        VisualItem item = display.findItem(ev.getPoint());
        if ((item != null) && (item instanceof NodeItem)) {
            String label = item.getAttribute(XebeceTreeNode.ATTR_NODE_NAME);
            display.setToolTipText(label);
        } else {
            display.setToolTipText(null);
        }
    }

    /**
     * Indicates a mouse drag over the display.
     *
     * @param ev the MouseEvent
     */
    public final void mouseDragged(final MouseEvent ev) {
        return;
    }

}
