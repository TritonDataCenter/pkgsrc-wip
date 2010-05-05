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
import java.awt.DisplayMode;
import java.awt.Graphics;
import java.awt.GraphicsEnvironment;
import java.awt.GraphicsDevice;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

import java.io.File;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JColorChooser;
import javax.swing.JDialog;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
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

/** This is a Swing based GUI for Ontographics.
 *
 * @author Roman Kennke
 * @version $Id$
 */
public class SwingGUI implements GUI {

    /** The time in milliseconds after the status text gets cleared. */
    private static final int STATUS_CLEAR_INTERVAL = 5000;

    /** The initial width of the main window. */
    private static final int FRAME_WIDTH = 800;

    /** The initial height of the main window. */
    private static final int FRAME_HEIGHT = 600;


    /** The size of the divider. */
    private static final int DIVIDER_SIZE = 10;

    /** The main frame. */
    private JFrame mainFrame;

    /** The split panel (holding the graph view and the notes view). */
    private JSplitPane splitPane;

    /** The HT view. */
    private ImageDisplay graphView;

    /** The Prefuse registry. */
    private ItemRegistry registry;


    /** Our view configuration. */
    private ViewConfiguration viewConfig;

    /** The status bar. */
    private JLabel statusBar;

    /** The fullscreen frame. */
    private JFrame fullScreenFrame = null;


    /** The attachment pane. */
    //private JPanel attachmentPane;
    private NodePagePane nodePagePane;

    /** The attachment editor. */
    private AttachmentEditor attachmentEditor;

    /** The node attribute editor. */
    private NodeAttributeEditor nodeAttributeEditor;

    /** The node attribute dialog. */
    private JDialog nodeAttributeDialog;

    /** The attachments dialog. */
    private JDialog attachmentDialog;

    /** The main panel. */
    private JPanel mainPane;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The application model. */
    private Context model;

    /** Our menu bar. */
    private OntoMenuBar menuBar;

    /** Our toolbar. */
    private OntoToolBar toolBar;

    /** Our node context menu manager. */
    private NodeContextMenuManager nodeContextMenuManager;


    /** Indicates if attachments palette is selected. */
    private boolean attachmentsSelected = false;

    /** Indicates if node properties palette is selected. */
    private boolean nodePropertiesSelected = false;

    /** The timer for clearing the status bar. */
    private Timer timer;

    /** The dialogs that are created using {@link #createDialog}. */
    private List dialogs;


    /** If true, then divider property changes are not propagated. */
    private boolean dividerPropertyLocked = false;

    /**
     * Creates a new instance.
     *
     * @param newModel the applications model
     */
    public SwingGUI(final Context newModel) {

        model = newModel;
        viewConfig = new ViewConfiguration(model);

        dialogs = new ArrayList();

        // the root frame
        JFrame.setDefaultLookAndFeelDecorated(false);
        mainFrame = new JFrame();

        // ============================================
        // the Menu bar
        // ============================================
        menuBar = new OntoMenuBar(this, model);
        mainFrame.setJMenuBar(menuBar);


        //==================================
        // The Toolbar
        //==================================

        toolBar = new OntoToolBar(model);


        // ==================================
        // The Main panel
        // ==================================
        mainFrame.getContentPane().setLayout(new BorderLayout());


        nodeAttributeEditor = new NodeAttributeEditor(this, model);
        nodeAttributeDialog = createDialog();
        nodeAttributeDialog.setContentPane(nodeAttributeEditor);
        nodeAttributeDialog.pack();
        nodeAttributeDialog.setModal(false);
        nodeAttributeDialog.addWindowListener
            (new WindowAdapter() {
                    public final void windowClosing(final WindowEvent ev) {
                        log.finer("node attribute dialog closing");
                        menuBar.setNodePropertiesSelected(false);
                    }
                });

//         JPanel leftPanel = new JPanel();
//         leftPanel.setLayout(new BoxLayout(leftPanel, BoxLayout.Y_AXIS));

//         leftPanel.add(nodeAttributeEditor);

//         leftPanel.add(Box.createVerticalStrut(10));


//         leftPanel.add(Box.createVerticalGlue());

//         // attachment editor
        attachmentEditor = new AttachmentEditor(model);
        attachmentDialog = createDialog();
        attachmentDialog.setContentPane(attachmentEditor);
        attachmentDialog.pack();
        attachmentDialog.setModal(false);
        attachmentDialog.addWindowListener
            (new WindowAdapter() {
                    public final void windowClosing(final WindowEvent ev) {
                        log.finer("attachment dialog closing");
                        menuBar.setAttachmentsSelected(false);
                        attachmentsSelected = false;
                    }
                });
//         leftPanel.add(attachmentEditor);
//         leftPanel.add(Box.createVerticalGlue());


        //===============================================================
        // the tree view
        //===============================================================
        //ctx.addTreeChangeListener(this);

        mainPane = createMainPane();

        // add components to the main frame
        mainFrame.getContentPane().add(toolBar, BorderLayout.NORTH);
        mainFrame.getContentPane().add(mainPane, BorderLayout.CENTER);

        statusBar = new JLabel(" ");
        mainFrame.getContentPane().add(statusBar, BorderLayout.SOUTH);

        mainFrame.setSize(FRAME_WIDTH, FRAME_HEIGHT);
        mainFrame.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);

        
        return;
    }


    /**
     * Starts the GUI.
     *
     */
    public final void startGUI() {


        mainFrame.setVisible(true);
        dividerPropertyLocked = false;

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

        nodeContextMenuManager = new NodeContextMenuManager(model);
        graphView.addControlListener(nodeContextMenuManager);
        graphView.addControlListener(menuBar.getControlListener());

        graphView.setHighQuality(true);
        graphView.addControlListener(new GraphControlListener());

        // initialize display
        //graphView.setSize(700,700);
        graphView.setBackground(Color.WHITE);


        nodePagePane = new NodePagePane(model, this);
        nodePagePane.editMode();
        //notesPane.setMinimumSize(new Dimension(200, 200));

        splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT,
                                   graphView, nodePagePane);
        dividerPropertyLocked = true;
        splitPane.addPropertyChangeListener(new PropertyChangeListener() {
                public void propertyChange(PropertyChangeEvent ev) {
                    if (!dividerPropertyLocked
                        && ev.getPropertyName().equals("dividerLocation")) {

                        log.finer("Property changed");
                        log.finer("Property name: " + ev.getPropertyName());
                        log.finer("Property value: " + ev.getNewValue());
                        log.finer("Property type: "
                                  + ev.getNewValue().getClass());

                        ViewConfigurationModel vc =
                            model.getDocument().getViewConfiguration();
                        int absLoc = ((Integer) ev.getNewValue()).intValue();
                        double relLoc = (double) absLoc
                            / (double) splitPane.getWidth();
                        log.finer("relative location: " + relLoc);
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
        if (timer != null) {
            timer.cancel();
        }
        if (nodeAttributeDialog != null) {
            nodeAttributeDialog.dispose();
        }
        if (attachmentDialog != null) {
            attachmentDialog.dispose();
        }
        if (viewConfig != null) {
            viewConfig.cancel();
        }

        // dispose dialogs
        Iterator diagIter = dialogs.iterator();
        while (diagIter.hasNext()) {
            JDialog dialog = (JDialog) diagIter.next();
            dialog.dispose();
        }
        nodePagePane.shutdown();
        mainFrame.dispose();
        viewConfig.shutdown();
        return;
    }

    /**
     * Adds an action listener to the view and its subcomponents.
     *
     * @param l the listener
     */
    public final void addActionListener(final ActionListener l) {
        if (menuBar != null) {
            menuBar.addActionListener(l);
        }
        if (toolBar != null) {
            toolBar.addActionListener(l);
        }
        if (nodeContextMenuManager != null) {
            nodeContextMenuManager.addActionListener(l);
        }
        if (attachmentEditor != null) {
            attachmentEditor.addActionListener(l);
        }
        if (nodeAttributeEditor != null) {
            nodeAttributeEditor.addActionListener(l);
        }
        return;
    }

    /**
     * Creates a fresh dialog for this application.
     *
     * @return the newly created dialog
     */
    public final JDialog createDialog() {
        JDialog newDiag = new JDialog(mainFrame);
        dialogs.add(newDiag);
        return newDiag;
    }

    /**
     * Toggles the display of the attachment palette and update the menus etc.
     */
    public final void toggleAttachmentPalette() {
        attachmentsSelected = !attachmentsSelected;
        menuBar.setAttachmentsSelected(attachmentsSelected);
        updateAttachmentPalette();
    }


    /**
     * Updates the display of the attachment palette, according to the
     * setting in the menus.
     */
    public final void updateAttachmentPalette() {
        if (attachmentsSelected) {
            attachmentDialog.setVisible(true);
        } else {
            attachmentDialog.setVisible(false);
        }
        return;

    }


    /**
     * Toggles the display of the node properties palette and update
     * the menus etc.
     */
    public final void toggleNodeEditorPalette() {
        nodePropertiesSelected = !nodePropertiesSelected;
        menuBar.setNodePropertiesSelected(nodePropertiesSelected);
        updateNodeEditorPalette();
    }

    /**
     * Updates the display of the attachment palette, according to the
     * setting in the menus.
     */
    public final void updateNodeEditorPalette() {
        log.finer("switched node properties palette");
        if (nodePropertiesSelected) {
            nodeAttributeDialog.setVisible(true);
        } else {
            nodeAttributeDialog.setVisible(false);
        }
        return;
    }

    /**
     * Opens a find node dialog.
     *
     * @param action the action that is beeing called on user input
     */
    public final void startFindDialog(final EditFindAction action) {

        MessageFactory mf = MessageFactory.newInstance();
        SwingFindNodeDialog dialog = new SwingFindNodeDialog(
                              mainFrame, mf.getMessage("dialog.find.title"),
                              action);
        dialog.showDialog();
        return;
    }

    /** Opens a file dialog.
     * @param title the file dialogs title.
     * @param filters file filters for the file dialog.
     * @param type the type of the dialog. May be OPEN_FILE or
     *     SAVE_FILE.
     * @return the selected file, or <code>null</code> if no file was selected.
     */
    public final File showFileDialog(final String title,
                                     final FileFilters filters,
                                     final int type) {

        JFileChooser chooser = new JFileChooser();
        chooser.setDialogTitle(title);

        // set current working directory
        Settings settings = model.getSettings();
        File dir = settings.getCurrentDir();
	if (dir != null) {
	    chooser.setCurrentDirectory(dir);
	}
        Iterator filterIter = filters.iterator();
        while (filterIter.hasNext()) {
            FileFilter filefilter = (FileFilter) filterIter.next();
            SwingFileFilter swingFilter = new SwingFileFilter(filefilter);
            chooser.addChoosableFileFilter(swingFilter);
        }

        int returnVal = JFileChooser.CANCEL_OPTION;
        if (type == OPEN_FILE) {
            returnVal = chooser.showOpenDialog(mainFrame);
        } else if (type == SAVE_FILE) {
            returnVal = chooser.showSaveDialog(mainFrame);
        }
        File selectedFile = null;
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            selectedFile = chooser.getSelectedFile();
        }

        if (selectedFile != null) {
            dir = selectedFile.getParentFile();
            settings = model.getSettings();
            settings.setCurrentDir(dir);
        }
        return selectedFile;
    }

    /** Opens the online help.
     */
    public void viewHelp() {
    }


    /** Shows a status message.
     * @param status the message to be shown.
     */
    public void setStatus(final String status) {
        statusBar.setText(status);

        log.fine("set status");
        timer = new Timer();
        TimerTask task = new ClearStatusTimerTask();
        timer.schedule(task, STATUS_CLEAR_INTERVAL);


        return;
    }

    /** Shows the extra editor items for managing attachments.
     */
    public void showAttachmentExtras() {
    }

    /** Hides the extra editor items for managing attachments.
     */
    public void hideAttachmentExtras() {
    }

    /** Navigates the browser frame to the specified URL.
     * @param href the URL to browse to.
     */
    public void navigate(final String href) {

        // not implemented here
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

    /**
     * Returns the main frame of the application.
     *
     * @return the main frame of the application
     */
    public final JFrame getMainFrame() {
        return mainFrame;
    }


    /** Sets the tree to display, and the node which should be initially
     * selected.
     * @param tree the tree to display.
     */
    private final void setTree(final Tree tree) {

        log.entering("org.kennke.xebece.SwingGUI", "setTree");
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

        log.fine("set new tree");
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

        log.entering("org.kennke.xebece.SwingGUI", "centerNode");
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

        log.entering("org.kennke.xebece.SwingGUI", "selectNode");

        if (nodeAttributeEditor != null) {
            nodeAttributeEditor.setNode(node);
        }
        if (nodePagePane != null) {
            nodePagePane.setNode(node);
        }
        if (attachmentEditor != null) {
            attachmentEditor.setNode(node);
        }

        if (node != null) {
            log.fine("calling ViewConfiguration.runNow from"
                     + " SwingGUI.selectNode");
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


    /**
     * Opens a dialog for choosing a color.
     *
     * @param preColor the color that is currently selected
     *
     * @return the chosen color or <code>null</code> if no color has been
     *     chosen.
     */
    public final Color showColorDialog(final Color preColor) {

        MessageFactory mf = MessageFactory.newInstance();
        Color color = JColorChooser.showDialog(
                                mainFrame,
                                mf.getMessage("colorDialogTitle"),
                                preColor);

        return color;
    }


    /** Shows a confirmation dialog.
     * @param message the message to be displayed.
     * @return View.OK_OPTION if the user confirmed,
     *         View.NO_OPTION if the user declined or
     *         View.CANCEL_OPTION if the user cancelled.
     */
    public final int showConfirmDialog(final String message) {

        int conf = JOptionPane.showConfirmDialog(mainFrame, message);
        if (conf == JOptionPane.OK_OPTION) {
            return OK_OPTION;
        } else if (conf == JOptionPane.NO_OPTION) {
            return NO_OPTION;
        } else {
            return CANCEL_OPTION;
        }
    }

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

    /** Shows an information dialog.
     * @param message the message to display.
     */
    public final void showInformationDialog(final String message) {

        JOptionPane.showMessageDialog(mainFrame, message);
        return;
    }


    /**
     * Shows a dialog that prompts the user to input the labels
     * of new child nodes.
     *
     * @param action the NewChildrenAction instance for callback.
     */
    public final void showNewChildNodesDialog(final NewChildrenAction action) {

        MessageFactory mf = MessageFactory.newInstance();

        String children = JOptionPane.showInputDialog
            (mainFrame,
             mf.getMessage("dialog.new_children.prompt"),
             mf.getMessage("dialog.new_children.title"));

        action.addChildNodes(children);
        return;
    }

    /**
     * Switches to fullscreen mode.
     *
     * @param actions the applications controller
     */
    public final void switchFullScreenMode(final Controller actions) {

        if (fullScreenFrame == null) {

            dividerPropertyLocked = true;
            mainFrame.setVisible(false);
            nodePagePane.viewMode();
	    nodeContextMenuManager.viewMode();

            fullScreenFrame = new JFrame();
            fullScreenFrame.setUndecorated(true);
            fullScreenFrame.getContentPane().setLayout(new BorderLayout());
            fullScreenFrame.getContentPane().add(mainPane);
            fullScreenFrame.setVisible(true);

            AdPane adPane = new AdPane();
            fullScreenFrame.setGlassPane(adPane);
            adPane.setVisible(true);

            fullScreenFrame.addKeyListener(
                new KeyAdapter() {
                    public final void keyPressed(final KeyEvent e) {

                        int keyCode = e.getKeyCode();
                        int modifiers = e.getModifiers();
                        if ((keyCode == KeyEvent.VK_UP) && (modifiers == 0)) {
                            actions.triggerAction("navigation.up");

                        } else if ((keyCode == KeyEvent.VK_DOWN)
                                   && (modifiers == 0)) {
                            actions.triggerAction("navigation.down");

                        } else if ((keyCode == KeyEvent.VK_LEFT)
                                   && (modifiers == 0)) {
                            actions.triggerAction("navigation.left");

                        } else if ((keyCode == KeyEvent.VK_RIGHT)
                                   && (modifiers == 0)) {
                            actions.triggerAction("navigation.right");

                        } else if ((keyCode == KeyEvent.VK_ENTER)
                                   && (modifiers == 0)) {
                            actions.triggerAction("navigation.root");

                        } else if ((keyCode == KeyEvent.VK_ESCAPE)) {
                            actions.triggerAction("view.fullScreen");
                        } else if ((keyCode == KeyEvent.VK_ENTER)) {
                            graphView.stopEditing();
                        }
                    }
                });
            GraphicsEnvironment env =
                GraphicsEnvironment.getLocalGraphicsEnvironment();
            GraphicsDevice dev = env.getDefaultScreenDevice();


            //            dev.setFullScreenWindow(fullScreenFrame);
            DisplayMode mode = dev.getDisplayMode();
            fullScreenFrame.setSize(mode.getWidth(), mode.getHeight());
            fullScreenFrame.requestFocus();
            fullScreenFrame.setLocationRelativeTo(null);
            splitPane.setDividerSize(1);
            fullScreenFrame.setVisible(true);
            ViewConfigurationModel vc =
                model.getDocument().getViewConfiguration();
            splitPane.setDividerLocation(vc.getDividerLocation());
            dividerPropertyLocked = false;

            //registry.setGraph();
            viewConfig.runNow();



        } else {

            dividerPropertyLocked = true;
           
            log.finer("fullscreen off");

            fullScreenFrame.setVisible(false);
            fullScreenFrame.dispose();
            fullScreenFrame = null;

            // GraphicsEnvironment env =
            //    GraphicsEnvironment.getLocalGraphicsEnvironment();
            // GraphicsDevice dev = env.getDefaultScreenDevice();
            //            dev.setFullScreenWindow(null);

            mainFrame.getContentPane().add(mainPane, BorderLayout.CENTER);
            splitPane.setDividerSize(DIVIDER_SIZE);
            mainFrame.setVisible(true);
            nodePagePane.editMode();
	    nodeContextMenuManager.editMode();
            //mainPanel.setRightComponent(rightPane);

            //registry.setGraph();
            viewConfig.runNow();

            ViewConfigurationModel vc =
                model.getDocument().getViewConfiguration();
            splitPane.setDividerLocation(vc.getDividerLocation());
            dividerPropertyLocked = false;

        }
        //splitPane.setDividerLocation(DEFAULT_DIVIDER_LOCATION);

        return;
    }

    /**
     * Determines if we are currently in fullscreen mode.
     *
     * @return <code>true</code> if we are in fullscreen mode,
     *     <code>false</code> otherwise
     */
    public final boolean isFullScreen() {

        return fullScreenFrame != null;
    }

    /**
     * Causes the display to refesh itself.
     */
    public void refresh() {
        graphView.repaint();
        synchronized (nodePagePane) {
            nodePagePane.repaint();
        }
        return;
    }

    /**
     * Removes the currently selected presentation component.
     */
    public final void removeComponent() {
        nodePagePane.removeComponent();
        return;
    }

    /**
     * Sets the application window title.
     *
     * @param title the title to be set
     */
    public final void setTitle(final String title) {
        mainFrame.setTitle(title);
        return;
    }

    /**
     * Indicates that the current file has changed.
     *
     * @param ev the file change event
     */
    public final void fileChanged(final FileChangeEvent ev) {
        File file = ev.getFile();
        if (file != null) {
            setTitle("Xebece: " + file.getName());
        } else {
            MessageFactory mf = MessageFactory.newInstance();
            setTitle("Xebece: " + mf.getMessage("untitled"));
        }
    }

    /**
     * Shows an error message.
     *
     * @param ex the error
     */
    public final void showErrorMessage(final Throwable ex) {

        log.log(Level.SEVERE, "Error: ", ex);
        return;
    }


    /**
     * Starts the placement of a presentation component.
     *
     * @param comp the component to be placed
     */
    public final void placeComponent(final PageComponent comp) {
        nodePagePane.placeComponent(comp);
        return;
    }

    /**
     * Cancels the placement of a presentation component.
     */
    public final void cancelPlacement() {
        nodePagePane.cancelPlacement();
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
     * Returns the menu bar.
     *
     * @return the menu bar
     */
    public final OntoMenuBar getMenuBar() {
        return menuBar;
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


    /** Clears the status bar after a specified amount of time.
     * @author Roman Kennke
     */
    private class ClearStatusTimerTask extends TimerTask {

        /** Actually clears the status text. */
        public final void run() {
            statusBar.setText(" ");
            return;
        }
    }

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

            log.entering("org.kennke.xebece.SwingGUI.GraphControlListener",
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

