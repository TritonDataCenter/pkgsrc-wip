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

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

import java.io.File;

import java.util.logging.Logger;

import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JSplitPane;

import edu.berkeley.guir.prefuse.ItemRegistry;
import edu.berkeley.guir.prefuse.VisualItem;
import edu.berkeley.guir.prefuse.collections.DOIItemComparator;
import edu.berkeley.guir.prefuse.event.ControlAdapter;

import edu.berkeley.guir.prefuse.graph.Entity;
import edu.berkeley.guir.prefuse.graph.DefaultTree;
import edu.berkeley.guir.prefuse.graph.Tree;
import edu.berkeley.guir.prefuse.graph.TreeNode;


/**
 *
 * @author roman
 */
public class AppletGUI implements GUI {
    
        /** Indicates the Balloon Tree Layout. */
    public static final int BALLOON_TREE_LAYOUT = 20;

    /** Indicates the Radial Tree Layout. */
    public static final int RADIAL_TREE_LAYOUT = 21;

    /** Indicates the Force Directed Layout. */
    public static final int FORCE_DIRECTED_LAYOUT = 22;

    /** Indicates the Force Directed Layout. */
    public static final int INDENTED_TREE_LAYOUT = 23;

    /** Indicates the Force Directed Layout. */
    public static final int RANDOM_LAYOUT = 24;

    /** Indicates the Force Directed Layout. */
    public static final int SQUARIFIED_TREE_MAP_LAYOUT = 25;

    /** Indicates the Force Directed Layout. */
    public static final int TOP_DOWN_TREE_LAYOUT = 26;

    /** Indicates the Force Directed Layout. */
    public static final int VERTICAL_TREE_LAYOUT = 27;


    /** A constant for an OPEN_FILE dialog. */
    public static final int OPEN_FILE = 1;

    /** A constant for an SAVE_FILE dialog. */
    public static final int SAVE_FILE = 2;

    /** A constant for an OK_OPTION approvement of a dialog. */
    public static final int OK_OPTION = 10;

    /** A constant for an NO_OPTION approvement of a dialog. */
    public static final int NO_OPTION = 11;

    /** A constant for an CANCEL_OPTION approvement of a dialog. */
    public static final int CANCEL_OPTION = 12;


    /** The timeframe in which two mouseclicks are recognized as double-click.
     */
    public static final int DOUBLE_CLICK_INTERVAL = 500;

    /** The size of the divider. */
    private static final int DIVIDER_SIZE = 10;

    /** The split panel (holding the graph view and the notes view). */
    private JSplitPane splitPane;

    /** The HT view. */
    private ImageDisplay graphView;

    /** The Prefuse registry. */
    private ItemRegistry registry;


    /** Our view configuration. */
    private ViewConfiguration viewConfig;

    /** The attachment pane. */
    //private JPanel attachmentPane;
    private NodePagePane nodePagePane;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The application model. */
    private Context model;

    /** If true, then divider property changes are not propagated. */
    private boolean dividerPropertyLocked = false;


    /**
     * Creates a new instance.
     *
     * @param newModel the applications model
     */
    public AppletGUI(final Context newModel) {

        model = newModel;
        viewConfig = new ViewConfiguration(model);

        return;
    }


    /**
     * Creates and returns the main pane.
     *
     * @return the main pane
     */
    public final JPanel createMainPane() {

        registry = new ItemRegistry(new DefaultTree(new XebeceTreeNode()));
        graphView = new ImageDisplay(registry);
        graphView.addMouseListener
            (new MouseAdapter() {
                    public final void mouseClicked(final MouseEvent ev) {
                        graphView.stopEditing();
                        //graphView.repaint();
                    }
                });
        registry.addDisplay(graphView);

        graphView.setHighQuality(true);
        graphView.addControlListener(new GraphControlListener());

        // initialize display
        //graphView.setSize(700,700);
        graphView.setBackground(Color.WHITE);


        nodePagePane = new NodePagePane(model, null);
        nodePagePane.editMode();
        //notesPane.setMinimumSize(new Dimension(200, 200));

        splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT,
                                   graphView, nodePagePane);
        dividerPropertyLocked = true;
        splitPane.addPropertyChangeListener(new PropertyChangeListener() {
                public void propertyChange(PropertyChangeEvent ev) {
                    if (!dividerPropertyLocked
                        && ev.getPropertyName().equals("dividerLocation")) {

                        log.finest("Property changed");
                        log.finest("Property name: " + ev.getPropertyName());
                        log.finest("Property value: " + ev.getNewValue());
                        log.finest("Property type: " + ev.getNewValue().getClass());

                        ViewConfigurationModel vc =
                            model.getDocument().getViewConfiguration();
                        int absLoc = ((Integer) ev.getNewValue()).intValue();
                        double relLoc = (double) absLoc
                            / (double) splitPane.getWidth();

                        log.finest("relative location: " + relLoc);
                        vc.setDividerLocation(relLoc);
                    }
                }
            });

        splitPane.setOneTouchExpandable(true);
        splitPane.setDividerSize(DIVIDER_SIZE);


        JPanel myPane = new JPanel();
        myPane.setLayout(new BorderLayout());
        myPane.add(splitPane, BorderLayout.CENTER);
        return myPane;
    }

    /**
     * Causes the display engine to shutdown the application.
     */
    public final void shutdown() {
        if (viewConfig != null) {
            viewConfig.cancel();
        }

        nodePagePane.shutdown();
        viewConfig.shutdown();
        return;
    }

    /**
     * Adds an action listener to the view and its subcomponents.
     *
     * @param l the listener
     */
    public final void addActionListener(final ActionListener l) {
        return;
    }


    /** Indicates a change to a tree.
     * @param ev the {@link TreeChangedEvent} related to this change.
     */
    public final void treeChanged(final TreeChangeEvent ev) {

        setTree(ev.getTree());
        return;
    }

    /**
     * Notifies of the selection of a node.
     *
     * @param ev the node selection event
     */
    public final void nodeSelectionChanged(final NodeSelectionChangeEvent ev) {
//         Thread thread = new Thread(new Runnable() {
//                 public final synchronized void run() {
//                 }
//             });
//         thread.setPriority(UPDATE_THREAD_PRIORITY);
//         thread.start();
        selectNode(ev.getSelectedNode());
        return;
    }

    /** Sets the tree to display, and the node which should be initially
     * selected.
     * @param tree the tree to display.
     */
    private final void setTree(final Tree tree) {

        log.entering("org.kennke.xebece.AppletGUI", "setTree");
        //dividerPropertyLocked = true;

            
        //graphView.setVisible(false);
        //splitPane.remove(graphView);

        if (registry != null) {
            registry.clear();
            registry.removeDisplay(graphView);
            registry.setGraph(tree);
        } else {
            registry = new ItemRegistry(tree);
        }

        if (graphView == null) {
            log.finer("graph view is null");
        } else {
            log.finer("graph view is not null");
        }
        registry.addDisplay(graphView);
        viewConfig.setRegistry(registry);

        registry.setItemComparator(new DOIItemComparator());


        // initialize action lists
        graphView.setItemRegistry(registry);

        //viewConfig.configure();

        //registry.setGraph();
        //     if (log.isDebugEnabled()) {
        // 	        log.debug("calling ViewConfiguration.runNow from SwingGUI.setGraph");
        // 	    }
        //             viewConfig.runNow();


        //rightPane.add(graphView, new Integer(100));

        //splitPane.setLeftComponent(graphView);
        //graphView.setVisible(true);

        //ViewConfigurationModel vc =
        //    model.getDocument().getViewConfiguration();
        //double dividerLocation = vc.getDividerLocation();
        //dividerPropertyLocked = true;
        //splitPane.setDividerLocation(dividerLocation);
        //dividerPropertyLocked = false;

        log.finer("set new tree");
        //if (log.isDebugEnabled()) {
        //    log.debug("Divider location: " + vc.getDividerLocation());
        //}
        splitPane.setOneTouchExpandable(true);

        //dividerPropertyLocked = false;
        return;
    }

    /**
     * Returns the view configuration of this View.
     *
     * @return the view configuration of this View.
     */
    public final ViewConfiguration getViewConfiguration() {
        return viewConfig;
    }


    /** Centers the tree view on the specified node.
     * @param node the node on which to center the view.
     */
    public final void centerNode(final TreeNode node) {

        log.entering("org.kennke.xebece.AppletGUI",
                     "centerNode");
        registry.getDefaultFocusSet().set(node);
	viewConfig.setTreeRoot(node);
        viewConfig.runNow();
        //graphView.translateToOrigin(node);
        return;
    }

    /** Selects (outlines) the specified node.
     * @param node the node to be selected.
     */
    private final void selectNode(final XebeceTreeNode node) {

        log.entering("org.kennke.xebece.AppletGUI", "selectNode called");

        if (nodePagePane != null) {
            nodePagePane.setNode(node);
        }

        if (node != null) {
            log.finer("calling ViewConfiguration.runNow from AppletGUI.selectNode");
            //viewConfig.runNow();
        }
        refresh();

        return;
    }

//     public void removeNode(final TreeNode node) {

//         NodeItem nodeItem = registry.getNodeItem(node);
//         if (nodeItem != null) {
//             registry.removeItem(nodeItem);
//         }
//         return;
//     }



    /** Returns the width of the HyperBolic Tree view component.
     * @return the width of the HyperBolic Tree view component.
     */
    public final int getHTViewWidth() {
        return graphView.getWidth();
    }

    /** Returns the height of the HyperBolic Tree view component.
     * @return the height of the HyperBolic Tree view component.
     */
    public final int getHTViewHeight() {
        return graphView.getHeight();
    }

    /** Draws the HyperBolic Tree on the specified {@link java.awt.Graphics}.
     * @param g the {@link java.awt.Graphics} to draw on.
     */
    public final void paintHTView(final Graphics g) {
        graphView.paintComponent(g);
        return;
    }

    /**
     * Causes the display to refesh itself.
     */
    public void refresh() {
        synchronized (nodePagePane) {
            nodePagePane.repaint();
        }
        return;
    }


    /**
     * Shows an error message.
     *
     * @param ex the error
     */
    public final void showErrorMessage(final Throwable ex) {

        log.throwing("org.kennke.xebece.AppletGUI", "showErrorMessage", ex);
        return;
    }

    /**
     * Returns the tree display component.
     *
     * @return the tree display component
     */
    public final ImageDisplay getImageDisplay() {
        return graphView;
    }

    /**
     * Returns the item registry.
     *
     * @return the item registry
     */
    public final ItemRegistry getItemRegistry() {
        return registry;
    }

    /**
     * Notifies the listener of a change in the view configuration.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void viewConfigurationChanged(ViewConfigurationEvent ev) {
        ViewConfigurationModel vc = ev.getViewConfiguration();
        double dividerLocation = vc.getDividerLocation();
        dividerPropertyLocked = true;
        splitPane.setDividerLocation(dividerLocation);
        dividerPropertyLocked = false;
    }

    /**
     * Notifies the listener of a change in the edge type.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void edgeTypeChanged(ViewConfigurationEvent ev) {}

    /**
     * Notifies the listener of a change in the view layout.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void layoutChanged(ViewConfigurationEvent ev) {}

    /**
     * Notifies the listener of a change in the colorization.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void nodeColorFunctionChanged(ViewConfigurationEvent ev) {}


    public OntoMenuBar getMenuBar() {
        return null;
    }
    
    public void cancelPlacement() {}
    
    public void placeComponent(PageComponent comp) {}
    
    public void setTitle(String title) {}
    
    public void removeComponent() {}
    
    public boolean isFullScreen() { return false; }
    
    public void switchFullScreenMode(Controller actions) {}
    
    public void showNewChildNodesDialog(NewChildrenAction nca) {}
    
    public void showInformationDialog(String info) {}
    
    public int showConfirmDialog(String message) { return CANCEL_OPTION; }
    
    public Color showColorDialog(Color col) { return Color.white; }
    
    public JFrame getMainFrame() { return null; }
    
    public void setStatus(String status) {}
    
    public File showFileDialog(final String title,
                               final FileFilters filters,
                               final int type) {
        return null;
    }

    public void startFindDialog(EditFindAction action) { }
    
    public void updateNodeEditorPalette() {}
    
    /**
     * Toggles the display of the attachment palette and update the menus etc.
     */
    public void toggleAttachmentPalette() {}

    /**
     * Updates the display of the attachment palette, according to the
     * setting in the menus.
     */
    public void updateAttachmentPalette() {}


    /**
     * Toggles the display of the node properties palette and update
     * the menus etc.
     */
    public void toggleNodeEditorPalette() {}

    public JDialog createDialog() { return null; }

    public void startGUI() {};
    
    public void fileChanged(FileChangeEvent ev) {}
    
    
    /**
     * Catches clicks on the graph display.
     *
     * @author Roman Kennke (roman@ontographics.com)
     */
    class GraphControlListener extends ControlAdapter {

        /**
         * Indicates a mouse click on an item.
         *
         * @param item the item on which was clicked.
         * @param e the mouse event.
         */
        public final void itemClicked(final VisualItem item, final
                                MouseEvent e) {

            log.entering("org.kennke.xebece.AppletGUI.GraphControlListener",
                         "itemClicked");

            graphView.stopEditing();

            Entity entity = item.getEntity();

            if (entity instanceof XebeceTreeNode) {
                XebeceTreeNode node = (XebeceTreeNode) entity;
                viewConfig.setTreeRoot(node);
                model.setSelectedNode(node);
                getViewConfiguration().runNow();
            }
            return;
        }
    }
}
