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

import java.util.Collection;
import java.util.Iterator;
import java.util.HashSet;
import java.util.List;

import java.util.logging.Logger;

// external libraries imports
import edu.berkeley.guir.prefuse.Display;
import edu.berkeley.guir.prefuse.EdgeItem;
import edu.berkeley.guir.prefuse.ItemRegistry;
import edu.berkeley.guir.prefuse.NodeItem;
import edu.berkeley.guir.prefuse.VisualItem;

import edu.berkeley.guir.prefuse.action.RepaintAction;

import edu.berkeley.guir.prefuse.action.animate.ColorAnimator;
import edu.berkeley.guir.prefuse.action.animate.LocationAnimator;

import edu.berkeley.guir.prefuse.action.filter.WindowedTreeFilter;
import edu.berkeley.guir.prefuse.action.filter.GraphFilter;

import edu.berkeley.guir.prefuse.activity.ActionList;
import edu.berkeley.guir.prefuse.activity.SlowInSlowOutPacer;

import edu.berkeley.guir.prefuse.event.ControlListener;

import edu.berkeley.guir.prefuse.graph.Node;

import edu.berkeley.guir.prefuse.render.DefaultEdgeRenderer;
import edu.berkeley.guir.prefuse.render.DefaultNodeRenderer;
import edu.berkeley.guir.prefuse.render.Renderer;
import edu.berkeley.guir.prefuse.render.RendererFactory;
import edu.berkeley.guir.prefuse.render.TextImageItemRenderer;

import edu.berkeley.guir.prefusex.controls.FocusControl;
import edu.berkeley.guir.prefusex.controls.PanControl;
import edu.berkeley.guir.prefusex.controls.SubtreeDragControl;
import edu.berkeley.guir.prefusex.controls.ZoomControl;

import edu.berkeley.guir.prefusex.layout.BalloonTreeLayout;
import edu.berkeley.guir.prefusex.layout.ForceDirectedLayout;
import edu.berkeley.guir.prefusex.layout.IndentedTreeLayout;
import edu.berkeley.guir.prefusex.layout.RadialTreeLayout;
import edu.berkeley.guir.prefusex.layout.RandomLayout;
import edu.berkeley.guir.prefusex.layout.SquarifiedTreeMapLayout;
import edu.berkeley.guir.prefusex.layout.TopDownTreeLayout;
import edu.berkeley.guir.prefusex.layout.VerticalTreeLayout;


/**
 * Stores and manages the configuration of the Tree/Graph view.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class ViewConfiguration implements ViewConfigurationListener {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The radius of the rounded corner edges. */
    private static final int NODE_CORNER_RADIUS = 4;


    /** The current layout. */
    private GraphLayout layout;

    /** The current node color function. */
    private NodeColorFunction nodeColorFunction;

    /** The current edge type. */
    private EdgeType edgeType;



    /** The Prefuse item registry. */
    private ItemRegistry registry;

    /** Our filter queue. */
    private ActionList filter;

    /** Our update queue. */
    private ActionList update;

    /** Our animation queue. */
    private ActionList animate;

    /** The tree filter (can this be made local??). */
    private WindowedTreeFilter feye;

    /** The edge renderer. */
    private DefaultEdgeRenderer edgeRenderer;

    /** The application model. */
    private Context model;

    /** Our control listeners. */
    private Collection controlListeners;

    /**
     * Creates a new instance.
     *
     * @param newModel the application model
     * @param newView the application view
     */
    public ViewConfiguration(final Context newModel) {

        model = newModel;

        //layout = GraphLayout.RADIAL_TREE_LAYOUT;
        //edgeType = EDGE_TYPE_CURVE;

        edgeRenderer = new XebeceEdgeRenderer();

        return;
    }

    /**
     * Creates a new instance.
     *
     * @param newRegistry the Prefuse item registry
     * @param newModel the application model
     */
    public ViewConfiguration(final ItemRegistry newRegistry,
                             final Context newModel) {

        this(newModel);

        setRegistry(newRegistry);
        return;
    }

    /**
     * Gives notifications about changes in a ViewConfigurationModel.
     *
     * @param ev the ViewConfigurationEvent
     */
    public final void viewConfigurationChanged
        (final ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        layout = vc.getLayout();
        edgeType = vc.getEdgeType();
        nodeColorFunction = vc.getColorFunction();

        log.finer("view configuration has changed");

        //model.getDocument().setTree(model.getDocument().getTree());
        configure();
        runNow();
        //view.refresh();
    }


    /**
     * Gives notifications about changes in a ViewConfigurationModel.
     *
     * @param ev the ViewConfigurationEvent
     */
    public final void layoutChanged(final ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        setLayout(vc.getLayout());
        //setNodeColorFunction(vc.getColorFunction());

        log.finer("layout configuration has changed");

        configure();
        runNow();
    }


    /**
     * Gives notifications about changes in a ViewConfigurationModel.
     *
     * @param ev the ViewConfigurationEvent
     */
    public final void edgeTypeChanged(final ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        setEdgeType(vc.getEdgeType());
        //setNodeColorFunction(vc.getColorFunction());

        log.finer("edge configuration has changed");

        //model.getDocument().setTree(model.getDocument().getTree());
        configureEdgeRenderer();
        registry.repaint();
        //update.runNow();
    }



    /**
     * Gives notifications about changes in a ViewConfigurationModel.
     *
     * @param ev the ViewConfigurationEvent
     */
    public final void nodeColorFunctionChanged
        (final ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        //setLayout(vc.getLayout());
        setNodeColorFunction(vc.getColorFunction());

        log.finer("color configuration has changed");

        filter.runNow();
    }


    /**
     * Sets the Prefuse item registry.
     *
     * @param newRegistry the registry to be set
     */
    public final void setRegistry(final ItemRegistry newRegistry) {

        registry = newRegistry;

        if (filter != null) {
            filter.cancel();
        }
        if (update != null) {
            update.cancel();
        }
        if (animate != null) {
            animate.cancel();
        }
        filter = new ActionList(registry);
        update = new ActionList(registry);
        animate = new ActionList(registry, 1500, 20);

        return;
    }


    /**
     * Configures the specified filter with the options set in this
     * configuration.
     */
    public final void configure() {

        if ((update == null)
            || (filter == null)
            || (animate == null)) {
            return;
        }

        clearActionList(filter);


        if (layout == GraphLayout.BALLOON_TREE_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            BalloonTreeLayout layout1 = new BalloonTreeLayout();
            filter.add(layout1);

        } else if (layout == GraphLayout.FORCE_DIRECTED_LAYOUT) {

            filter.setDuration(-1);
            filter.setStepTime(20);

            filter.add(new GraphFilter());
            filter.add(new ForceDirectedLayout(false, false));
            //filter.add(new DemoColorFunction());
            filter.add(new RepaintAction());
            filter.runNow();

        } else if (layout == GraphLayout.INDENTED_TREE_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            IndentedTreeLayout layout2 = new IndentedTreeLayout();
            filter.add(layout2);

        } else if (layout == GraphLayout.RADIAL_TREE_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            RadialTreeLayout layout3 = new XebeceRadialTreeLayout();
            filter.add(layout3);

        } else if (layout == GraphLayout.RANDOM_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            RandomLayout layout4 = new RandomLayout();
            filter.add(layout4);

        } else if (layout == GraphLayout.SQUARIFIED_TREE_MAP_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            SquarifiedTreeMapLayout layout5 = new SquarifiedTreeMapLayout();
            filter.add(layout5);

        } else if (layout == GraphLayout.TOP_DOWN_TREE_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            TopDownTreeLayout layout6 = new TopDownTreeLayout();
            filter.add(layout6);

        } else if (layout == GraphLayout.VERTICAL_TREE_LAYOUT) {
            filter.add((feye = new WindowedTreeFilter(-4)));
            VerticalTreeLayout layout7 = new VerticalTreeLayout();
            filter.add(layout7);

        }

        filter.add(new OntoColorFunction(4, model, this));


        // configure updates
        clearActionList(update);

        update.add(new OntoColorFunction(4, model, this));
        //update.add(new RepaintAction());


        clearActionList(animate);

//         animate.setPacingFunction(new Pacer(){
//                 public double pace(double f) {
//                     return f;
//                 }
//             });
        animate.setPacingFunction(new SlowInSlowOutPacer());
        animate.add(new LocationAnimator());
        animate.add(new ColorAnimator());
        animate.add(new RepaintAction());

        Display graphView = registry.getDisplay(0);
//        Dimension size = graphView.getSize();
//         if (layout == GraphLayout.FORCE_DIRECTED_LAYOUT) {
//             graphView.pan(size.width / 2, size.height / 2);
//         } else {
//             graphView.pan(0, 0);
//         }

        //graphView.setSize(700,700);
        graphView.setBackground(Color.WHITE);
        installControlListeners(graphView);

        // initialize renderers
        Renderer nodeRenderer = new OntoNodeRenderer(model);
        Renderer nodeRenderer2 = new DefaultNodeRenderer();
        configureEdgeRenderer();
        ((TextImageItemRenderer) nodeRenderer).setRoundedCorner
            (NODE_CORNER_RADIUS, NODE_CORNER_RADIUS);

        // initialize item registry
        registry.setRendererFactory(new DemoRendererFactory(nodeRenderer,
                                                            nodeRenderer2,
                                                            edgeRenderer));

    }

    /**
     * Configures the edge renderer.
     */
    public final void configureEdgeRenderer() {

        if (edgeType == EdgeType.CURVE_EDGE) {
            edgeRenderer.setEdgeType(DefaultEdgeRenderer.EDGE_TYPE_CURVE);
            log.finer("configuring edge renderer: curve");

        } else {
            edgeRenderer.setEdgeType(DefaultEdgeRenderer.EDGE_TYPE_LINE);
            log.finer("configuring edge renderer: line");
        }

    }

    /**
     * Clears out the specified action list.
     *
     * @param al the action list to clear
     */
    private void clearActionList(final ActionList al) {

        if (al != null) {
            for (int i = al.size() - 1; i >= 0; i--) {
                al.remove(i);
            }
        }
        return;
    }

    /**
     * Sets the tree root node.
     *
     * @param node the node to be set as tree root node
     */
    public final void setTreeRoot(final Node node) {
        configure();
        feye.setTreeRoot(node);
        return;
    }


    /**
     * Sets the layout.
     *
     * @param newLayout the layout to be set
     */
    private void setLayout(final GraphLayout newLayout) {

        layout = newLayout;
        return;
    }

    /**
     * Sets the edge type.
     *
     * @param newEdgeType the edge type to set
     */
    private void setEdgeType(final EdgeType newEdgeType) {
        edgeType = newEdgeType;
        return;
    }

    /**
     * Sets the node color function.
     *
     * @param newNodeColorFunction the node color function to set
     */
    private void setNodeColorFunction
        (final NodeColorFunction newNodeColorFunction) {
        nodeColorFunction = newNodeColorFunction;
        return;
    }

    /**
     * Returns the current node color function.
     *
     * @return the current node color function
     */
    public final NodeColorFunction getNodeColorFunction() {
        return nodeColorFunction;
    }

    /**
     * Starts all action queues.
     */
    public final void runNow() {

        log.fine("running display queues");

        // check for possibly already running queues and cancel them
        if ((animate != null) && animate.isRunning()) {
            animate.cancel();
        }
        if ((update != null) && update.isRunning()) {
            update.cancel();
        }
        if ((filter != null) && filter.isRunning()) {
            filter.cancel();
        }
        
        if ((update != null) && (filter != null) && (animate != null)) {
            if (!animate.isRunning()) {
                LowQualityAction lowQuality = new LowQualityAction(registry);
                HighQualityAction highQuality = new HighQualityAction(registry);
                log.finer("run animate");
                animate.runAfter(lowQuality);
                highQuality.runAfter(animate);
                lowQuality.runAfter(filter);
		filter.runNow();
                log.finer("end animate");
            }
        }
    }

    /**
     * Cancels all current animations and other actions.
     */
    public void cancel() {
//         filter.cancel();
//         animate.cancel();
//         update.cancel();
    }


    /**
     * Notifies a shutdown of the application.
     */
    public final void shutdown() {
        filter.cancel();
        update.cancel();
        animate.cancel();
    }



    /**
     * A factory that delivers the right renderer for a given Entity.
     */
    static class DemoRendererFactory implements RendererFactory {

        /** This renderer is for focused nodes. */
        private Renderer nodeRenderer1;

        /** This renderer is for unfocused nodes. */
        private Renderer nodeRenderer2;

        /** This renderer is for edges. */
        private Renderer edgeRenderer;

        /**
         * Creates a new instance.
         *
         * @param nr1 for focused nodes.
         * @param nr2 for unfocused nodes.
         * @param er for edges.
         */
        public DemoRendererFactory(final Renderer nr1,
                                   final Renderer nr2,
                                   final Renderer er) {
            nodeRenderer1 = nr1;
            nodeRenderer2 = nr2;
            edgeRenderer = er;
        } //

        /**
         * Returns the correct renderer for the specified item.
         *
         * @param item the item for which we deliver a renderer.
         *
         * @return the renderer for that item.
         */
        public final Renderer getRenderer(final VisualItem item) {
            if (item instanceof NodeItem) {
                int d = ((NodeItem) item).getDepth();
                if (d > 3) {
                    int r = 1;
                    if (d == 4) {
                        r = 5;
                    }
                    ((DefaultNodeRenderer) nodeRenderer2).setRadius(r);
                    return nodeRenderer2;
                } else {
                    return nodeRenderer1;
                }
            } else if (item instanceof EdgeItem) {
                return edgeRenderer;
            } else {
                return null;
            }
        } //
    } // end of inner class DemoRendererFactory


    class LowQualityAction
        extends edu.berkeley.guir.prefuse.activity.Activity {

        private ItemRegistry reg;

        public LowQualityAction(ItemRegistry newReg) {
            super(0);
            reg = newReg;
        }

        public void run(long t) {

            List displays = reg.getDisplays();
            for (Iterator i = displays.iterator(); i.hasNext();) {
                Display display = (Display) i.next();
                display.setHighQuality(false);
            }
            log.finer("low quality");
        }
    }

    class HighQualityAction
        extends edu.berkeley.guir.prefuse.activity.Activity {

        private ItemRegistry reg;

        public HighQualityAction(ItemRegistry newReg) {
            super(0);
            reg = newReg;
        }

        public void run(long t) {

            List displays = reg.getDisplays();
            for (Iterator i = displays.iterator(); i.hasNext();) {
                Display display = (Display) i.next();
                display.setHighQuality(true);
                if (display instanceof ImageDisplay) {
                    ((ImageDisplay) display).forceRepaint();
                }
            }
            log.finer("high quality");
        }
    }


    private void installControlListeners(Display display) {
        // check if controlListeners is already instantiated
        if (controlListeners == null) {
            controlListeners = new HashSet();
        }

        // first create the listeners if we don't already have them
        if (controlListeners.size() == 0) {
            controlListeners.add(new FocusControl());
            controlListeners.add(new SubtreeDragControl());
            controlListeners.add(new PanControl());
            controlListeners.add(new ZoomControl());
            //controlListeners.add(new ZoomingPanControl());
            //controlListeners.add(new NeighborHighlightControl(update));
        }

        // add the listeners to the Display
        for (Iterator ls = controlListeners.iterator(); ls.hasNext();) {
            ControlListener l = (ControlListener) ls.next();
            display.addControlListener(l);
        }

    }
}
