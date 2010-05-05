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

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import java.util.logging.Logger;

/**
 * Holds the view configuration data.
 *
 * @author Roman Kennke
 */
public class ViewConfigurationModel {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /** The default location of the divider. */
    public static final double DEFAULT_DIVIDER_LOCATION = 0.7;


    /** The layout of the graph. */
    private GraphLayout layout;

    /** The node color function. */
    private NodeColorFunction colorFunction;

    /** The edge type. */
    private EdgeType edgeType;

    /** The divider location. */
    private double dividerLocation;

    /** The listeners. */
    private Set listeners;

    /**
     * Creates a new instance. Default settings are: Radial Tree Layout,
     * Curve Edges and Manual Colorization.
     */
    public ViewConfigurationModel() {
        listeners = new HashSet();
        layout = GraphLayout.RADIAL_TREE_LAYOUT;
        edgeType = EdgeType.CURVE_EDGE;
        colorFunction = NodeColorFunction.MANUAL;
        
        setDividerLocation(DEFAULT_DIVIDER_LOCATION);
    }

    /**
     * Returns the current divider location.
     *
     * @return the current divider location
     */
    public double getDividerLocation() {
        return dividerLocation;
    }

    /**
     * Sets the divider location.
     *
     * @param newDividerLocation the divider location to be set
     */
    public void setDividerLocation(double newDividerLocation) {
        if (newDividerLocation > 0) {
            dividerLocation = newDividerLocation;
        }
    }


    /**
     * Returns the currently selected edge type.
     *
     * @return the currently selected edge type
     *
     * @see EdgeType
     */
    public EdgeType getEdgeType() {
        return edgeType;
    }

    /**
     * Sets the edge type.
     *
     * @param newEdgeType the edge type to be set
     *
     * @see EdgeType
     */
    public void setEdgeType(EdgeType newEdgeType) {
        edgeType = newEdgeType;
        notifyEdgeTypeChange();
    }


    /**
     * Returns the currently selected layout.
     *
     * @return the currently selected layout
     *
     * @see GraphLayout
     */
    public GraphLayout getLayout() {
        return layout;
    }

    /**
     * Sets the layout.
     *
     * @param newLayout the layout to be set
     *
     * @see GraphLayout
     */
    public void setLayout(GraphLayout newLayout) {
        layout = newLayout;
        notifyLayoutChange();
    }

    /**
     * Returns the current color function.
     *
     * @return the current color function
     *
     * @see NodeColorFunction
     */
    public NodeColorFunction getColorFunction() {
        return colorFunction;
    }

    /**
     * Sets the current color function.
     *
     * @param newColorFunction the color function to be set
     *
     * @see NodeColorFunction
     */
    public void setColorFunction(NodeColorFunction newColorFunction) {
        colorFunction = newColorFunction;
        notifyColorChange();
    }

    /**
     * Applies the view configuration of <code>newVc</code> to this one.
     *
     * @param newVc the view configuration to be set
     */
    public void setViewConfiguration(ViewConfigurationModel newVc) {

        edgeType = newVc.getEdgeType();
        colorFunction = newVc.getColorFunction();
        layout = newVc.getLayout();
        dividerLocation = newVc.getDividerLocation();
        log.finer("set dividerLocation=" + dividerLocation);
        notifyViewConfigurationChange();
    }

    /**
     * Adds a listener that is interested in changes of the view configuration.
     *
     * @param l the listener
     */
    public void addViewConfigurationListener(ViewConfigurationListener l) {
        listeners.add(l);
        notifyViewConfigurationChange();
    }

    /**
     * Notifies interested listeners of a change in the view configuration.
     */
    private void notifyViewConfigurationChange() {

        for (Iterator i = listeners.iterator(); i.hasNext();) {
            ViewConfigurationListener l = (ViewConfigurationListener) i.next();
            if (l != null) {
                ViewConfigurationEvent ev = new ViewConfigurationEvent(this);
                l.viewConfigurationChanged(ev);
            }
        }
    } // 

    /**
     * Notifies interested listeners of a change in the layout.
     */
    private void notifyEdgeTypeChange() {

        for (Iterator i = listeners.iterator(); i.hasNext();) {
            ViewConfigurationListener l = (ViewConfigurationListener) i.next();
            ViewConfigurationEvent ev = new ViewConfigurationEvent(this);
            l.edgeTypeChanged(ev);
        }
    } // 

    /**
     * Notifies interested listeners of a change in the layout.
     */
    private void notifyLayoutChange() {

        for (Iterator i = listeners.iterator(); i.hasNext();) {
            ViewConfigurationListener l = (ViewConfigurationListener) i.next();
            ViewConfigurationEvent ev = new ViewConfigurationEvent(this);
            l.layoutChanged(ev);
        }
    } // 

    /**
     * Notifies interested listeners of a change in the layout.
     */
    private void notifyColorChange() {

        for (Iterator i = listeners.iterator(); i.hasNext();) {
            ViewConfigurationListener l = (ViewConfigurationListener) i.next();
            ViewConfigurationEvent ev = new ViewConfigurationEvent(this);
            l.nodeColorFunctionChanged(ev);
        }
    } // 


}
