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

import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;

import java.io.File;
import java.io.IOException;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.ButtonGroup;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JRadioButtonMenuItem;

import edu.berkeley.guir.prefuse.VisualItem;
import edu.berkeley.guir.prefuse.NodeItem;
import edu.berkeley.guir.prefuse.event.ControlAdapter;
import edu.berkeley.guir.prefuse.event.ControlListener;

/**
 * The menu bar for the Xebece application.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class OntoMenuBar extends JMenuBar
    implements UndoStateListener, LastOpenedFilesListener,
               ViewConfigurationListener {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The action listeners for the menu bar. */
    private Collection actionListeners;

    /** The file menu. */
    private JMenu fileMenu;

    /** The file->new menu item. */
    private JMenuItem fileNew;

    /** The file->open menu item. */
    private JMenuItem fileOpen;

    /** The file->save menu item. */
    private JMenuItem fileSave;

    /** The file->save as menu item. */
    private JMenuItem fileSaveAs;

    /** The file->export menu item. */
    private JMenuItem fileExport;

    /** The file->exit menu item. */
    private JMenuItem fileExit;

    /** The list of last opened files. */
    private List lastOpenedFiles;

    /** The edit->new children menu item. */
    private JMenuItem editNewChildren;

    /** The edit->undo children menu item. */
    private JMenuItem editUndo;

    /** The edit->redo children menu item. */
    private JMenuItem editRedo;

    /** The edit->rename menu item. */
    private JMenuItem editRename;

    /** The edit->color menu item. */
    private JMenuItem editColor;

    /** The edit->node properties menu item. */
    private JMenuItem editNodePalette;

    /** The edit->manager attachments menu item. */
    private JMenuItem editAttachmentPalette;

    /** The edit->attachments submenu. */
    private JMenuItem editAttachmentsMenu;

    /** The edit->cut children menu item. */
    private JMenuItem editCut;

    /** The edit->copy children menu item. */
    private JMenuItem editCopy;

    /** The edit->paste children menu item. */
    private JMenuItem editPaste;

    /** The edit->delete children menu item. */
    private JMenuItem editDel;

    /** The edit->background children menu item. */
    private JMenuItem editBackground;

    /** The navigation->up children menu item. */
    private JMenuItem upItem;

    /** The navigation->down children menu item. */
    private JMenuItem downItem;

    /** The navigation->left children menu item. */
    private JMenuItem leftItem;

    /** The navigation->right children menu item. */
    private JMenuItem rightItem;

    /** The navigation->root children menu item. */
    private JMenuItem rootItem;

    /** The navigation->find children menu item. */
    private JMenuItem editFind;

    /** The view->fullscreen children menu item. */
    private JMenuItem fullScreen;




    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem balloonLayoutItem;

    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem forceDirectedLayoutItem;

    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem indentedLayoutItem;

    /** The view->layout->radial layout menu item. */
    private JRadioButtonMenuItem radialLayoutItem;

    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem randomLayoutItem;

    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem squarifiedLayoutItem;

    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem topDownLayoutItem;

    /** The view->layout->balloon layout menu item. */
    private JRadioButtonMenuItem verticalLayoutItem;



    /** The view->edges->line edge menu item. */
    private JRadioButtonMenuItem lineEdgeItem;

    /** The view->edges->curve edge menu item. */
    private JRadioButtonMenuItem curveEdgeItem;

    /** The view->color->red green menu item. */
    private JMenuItem redBlue;

    /** The view->color->blue red menu item. */
    private JMenuItem blueGray;

    /** The view->color->green blue menu item. */
    private JMenuItem yellowBlue;

    /** The view->color->reset menu item. */
    private JMenuItem manual;

    /** The view->node palette menu item. */
    private JCheckBoxMenuItem nodePalette;

    /** The view->attachment palette menu item. */
    private JCheckBoxMenuItem attachmentPalette;

    /** The help->info menu item. */
    private JMenuItem infoMenuItem;

    protected OntoMenuBar() { }
    
    /**
     * Creates a new menu bar.
     *
     * @param newView the application view
     * @param newModel the application model
     */
    public OntoMenuBar(final GUI newView, final Context newModel) {

        actionListeners = new ArrayList();

        lastOpenedFiles = new ArrayList();

        // File menu
        fileMenu = createFileMenu();
        this.add(fileMenu);


        // edit menu
        JMenu editMenu = createEditMenu();
        this.add(editMenu);

        // view menu
        JMenu viewMenu = createViewMenu();
        this.add(viewMenu);

        // navigation menu
        JMenu navMenu = createNavigationMenu();
        add(navMenu);

        // help menu
        JMenu helpMenu = createHelpMenu();

        this.add(helpMenu);
    }


    /**
     * Creates and returns the file menu for the Xebece application.
     *
     * @return the file menu for the Xebece application.
     */
    private JMenu createFileMenu() {

        MenuHelper mh = MenuHelper.newInstance();
        JMenu newFileMenu = mh.createMenu("file");

        fileNew = mh.createMenuItem("file.new");
        newFileMenu.add(fileNew);

        fileOpen = mh.createMenuItem("file.open");
        newFileMenu.add(fileOpen);

        fileSave = mh.createMenuItem("file.save");
        newFileMenu.add(fileSave);

        fileSaveAs = mh.createMenuItem("file.saveAs");
        newFileMenu.add(fileSaveAs);

        fileExport = mh.createMenuItem("file.export");
        newFileMenu.add(fileExport);

        fileExit = mh.createMenuItem("file.exit");
        newFileMenu.add(fileExit);

        newFileMenu.addSeparator();

        return newFileMenu;
    }

    /**
     * Creates the edit menu.
     *
     * @return the edit menu.
     */
    private JMenu createEditMenu() {

        MenuHelper mh = MenuHelper.newInstance();

        JMenu editMenu = mh.createMenu("edit");


        editUndo = mh.createMenuItem("edit.undo");
        editMenu.add(editUndo);

        editRedo = mh.createMenuItem("edit.redo");
        editMenu.add(editRedo);

        editMenu.addSeparator();

        editNewChildren = mh.createMenuItem("node.newChildren");
        editMenu.add(editNewChildren);

        editRename = mh.createMenuItem("node.rename");
        editMenu.add(editRename);

        editColor = mh.createMenuItem("node.color");
        editMenu.add(editColor);

        editNodePalette = mh.createMenuItem("view.windows.nodeProperties");
        editMenu.add(editNodePalette);

        editMenu.addSeparator();

        editAttachmentPalette = mh.createMenuItem
            ("view.windows.attachments");
        editMenu.add(editAttachmentPalette);

        editAttachmentsMenu = mh.createMenu("node.attachments");
        editAttachmentsMenu.setIcon(new EmptyIcon(16, 16));
        editMenu.add(editAttachmentsMenu);

        editMenu.addSeparator();

        editCut = mh.createMenuItem("edit.cut");
        editMenu.add(editCut);

        editCopy = mh.createMenuItem("edit.copy");
        editMenu.add(editCopy);

        editPaste = mh.createMenuItem("edit.paste");
        editMenu.add(editPaste);

        editDel = mh.createMenuItem("edit.del");
        editMenu.add(editDel);

        editMenu.addSeparator();

        editBackground = mh.createMenuItem("edit.background");
        editMenu.add(editBackground);

        return editMenu;
    }

    /**
     * Creates the view menu.
     *
     * @return the view menu.
     */
    private JMenu createViewMenu() {

        MenuHelper mh = MenuHelper.newInstance();
        JMenu viewMenu = mh.createMenu("view");

        fullScreen = mh.createMenuItem("view.fullScreen");
        viewMenu.add(fullScreen);

        JMenu layoutMenu = mh.createMenu("view.layout");

        balloonLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.balloonLayout");
        layoutMenu.add(balloonLayoutItem);

        forceDirectedLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.forceDirectedLayout");
        layoutMenu.add(forceDirectedLayoutItem);

        indentedLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.indentedLayout");
        //layoutMenu.add(indentedLayoutItem);

        radialLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.radialLayout");
        layoutMenu.add(radialLayoutItem);
        radialLayoutItem.setSelected(true);

        randomLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.randomLayout");
        layoutMenu.add(randomLayoutItem);

        squarifiedLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.squarifiedLayout");
        //layoutMenu.add(squarifiedLayoutItem);

        topDownLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.topDownLayout");
        //layoutMenu.add(topDownLayoutItem);

        verticalLayoutItem = mh.createRadioButtonMenuItem
            ("view.layout.verticalLayout");
        layoutMenu.add(verticalLayoutItem);


        ButtonGroup layoutButtons = new ButtonGroup();
        layoutButtons.add(balloonLayoutItem);
        layoutButtons.add(forceDirectedLayoutItem);
        //layoutButtons.add(indentedLayoutItem);
        layoutButtons.add(radialLayoutItem);
        layoutButtons.add(randomLayoutItem);
        //layoutButtons.add(squarifiedLayoutItem);
        //layoutButtons.add(topDownLayoutItem);
        layoutButtons.add(verticalLayoutItem);

        //viewMenu.add(layoutMenu);

        JMenu edgeMenu = mh.createMenu("view.edge");

        lineEdgeItem = mh.createRadioButtonMenuItem("view.edge.lineEdge");
        edgeMenu.add(lineEdgeItem);

        curveEdgeItem = mh.createRadioButtonMenuItem("view.edge.curveEdge");
        edgeMenu.add(curveEdgeItem);
        curveEdgeItem.setSelected(true);

        ButtonGroup edgeTypeButtons = new ButtonGroup();
        edgeTypeButtons.add(lineEdgeItem);
        edgeTypeButtons.add(curveEdgeItem);

        viewMenu.add(edgeMenu);

        // node color submenu
        JMenu nodeColor = mh.createMenu("view.nodeColor");

        redBlue = mh.createRadioButtonMenuItem("view.nodeColor.redBlue");
        nodeColor.add(redBlue);

        blueGray = mh.createRadioButtonMenuItem("view.nodeColor.blueGray");
        nodeColor.add(blueGray);

        yellowBlue = mh.createRadioButtonMenuItem("view.nodeColor.yellowBlue");
        nodeColor.add(yellowBlue);

        manual = mh.createRadioButtonMenuItem("view.nodeColor.manual");
        nodeColor.add(manual);

        ButtonGroup colorItems = new ButtonGroup();
        colorItems.add(redBlue);
        colorItems.add(blueGray);
        colorItems.add(yellowBlue);
        colorItems.add(manual);

        viewMenu.add(nodeColor);


        JMenu windows = mh.createMenu("view.windows");

        nodePalette = mh.createCheckBoxMenuItem("view.windows.nodeProperties");
        windows.add(nodePalette);

        attachmentPalette = mh.createCheckBoxMenuItem
            ("view.windows.attachments");
        windows.add(attachmentPalette);
        viewMenu.add(windows);


        return viewMenu;
    }

    /**
     * Creates the navigation menu.
     *
     * @return the navigation menu.
     */
    private JMenu createNavigationMenu() {


        MenuHelper mh = MenuHelper.newInstance();

        JMenu navMenu = mh.createMenu("navigation");

        upItem = mh.createMenuItem("navigation.up");
        navMenu.add(upItem);

        downItem = mh.createMenuItem("navigation.down");
        navMenu.add(downItem);

        leftItem = mh.createMenuItem("navigation.left");
        navMenu.add(leftItem);

        rightItem = mh.createMenuItem("navigation.right");
        navMenu.add(rightItem);

        rootItem = mh.createMenuItem("navigation.root");
        navMenu.add(rootItem);


        editFind = mh.createMenuItem("edit.find");
        navMenu.add(editFind);

        return navMenu;

    }


    /**
     * Creates the help menu.
     *
     * @return the help menu
     */
    private JMenu createHelpMenu() {


        MenuHelper mh = MenuHelper.newInstance();
        JMenu helpMenu = mh.createMenu("help");

        // Info window
        infoMenuItem = mh.createMenuItem("help.info");
        helpMenu.add(infoMenuItem);


        return helpMenu;
    }

    /**
     * Adds an {@link java.awt.event.ActionListener} that is interested
     * in events from this menu bar.
     *
     * @param l the {@link java.awt.event.ActionListener}
     */
    public void addActionListener(final ActionListener l) {

        actionListeners.add(l);

        fileNew.addActionListener(l);
        fileOpen.addActionListener(l);
        fileSave.addActionListener(l);
        fileSaveAs.addActionListener(l);
        fileExport.addActionListener(l);
        fileExit.addActionListener(l);

        editUndo.addActionListener(l);
        editRedo.addActionListener(l);
        editNewChildren.addActionListener(l);
        editNodePalette.addActionListener(l);
        editColor.addActionListener(l);
        editRename.addActionListener(l);
        editAttachmentPalette.addActionListener(l);
        editCut.addActionListener(l);
        editCopy.addActionListener(l);
        editPaste.addActionListener(l);
        editDel.addActionListener(l);
        editBackground.addActionListener(l);

        upItem.addActionListener(l);
        downItem.addActionListener(l);
        leftItem.addActionListener(l);
        rightItem.addActionListener(l);
        rootItem.addActionListener(l);
        editFind.addActionListener(l);


        lineEdgeItem.addActionListener(l);
        curveEdgeItem.addActionListener(l);


        balloonLayoutItem.addActionListener(l);
        forceDirectedLayoutItem.addActionListener(l);
        indentedLayoutItem.addActionListener(l);
        radialLayoutItem.addActionListener(l);
        randomLayoutItem.addActionListener(l);
        squarifiedLayoutItem.addActionListener(l);
        topDownLayoutItem.addActionListener(l);
        verticalLayoutItem.addActionListener(l);


        redBlue.addActionListener(l);
        blueGray.addActionListener(l);
        yellowBlue.addActionListener(l);
        manual.addActionListener(l);
        fullScreen.addActionListener(l);

        nodePalette.addActionListener(l);
        attachmentPalette.addActionListener(l);

        infoMenuItem.addActionListener(l);

        for (Iterator i = lastOpenedFiles.iterator(); i.hasNext();) {
            fileMenu.addActionListener(l);
        }

        return;
    }

    /**
     * Checks if the node properties palette item is selected.
     *
     * @return <code>true</code> if the node properties palette item is
     *     selected.
     */
    public boolean isNodePropertiesSelected() {
        return nodePalette.getState();
    }

    /**
     * Sets the selected state for the node properties palette item.
     *
     * @param sel the desired selection state
     */
    public void setNodePropertiesSelected(final boolean sel) {
        nodePalette.setState(sel);
        return;
    }

    /**
     * Checks if the attachments properties palette item is selected.
     *
     * @return <code>true</code> if the attachments properties palette item is
     *     selected.
     */
    public boolean isAttachmentsSelected() {
        return attachmentPalette.isSelected();
    }

    /**
     * Sets the selected state for the attachments properties palette item.
     *
     * @param sel the desired selection state
     */
    public void setAttachmentsSelected(final boolean sel) {
        attachmentPalette.setSelected(sel);
        return;
    }

    /**
     * Notifies a change in the undo/redo item state.
     *
     * @param ev the update event
     */
    public void undoStateChanged(final UndoStateEvent ev) {

        editUndo.setEnabled(ev.getUndoState());
        editRedo.setEnabled(ev.getRedoState());
    }

    /**
     * Implementation of LastOpenedFilesListener. Updates the file menu
     * accordingly.
     *
     * @param ev the update event
     */
    public void lastOpenedFilesChanged(final LastOpenedFilesEvent ev) {


        // remove old entries
        for (Iterator i = lastOpenedFiles.iterator(); i.hasNext();) {
            JMenuItem item = (JMenuItem) i.next();
            fileMenu.remove(item);
        }
        lastOpenedFiles.clear();

        // create and add new entries
        File[] files = ev.getLastOpenedFiles();

        log.finer("we have " + files.length
                  + " files in last selected files");

        for (int i = 0; i < files.length; i++) {
            File file = files[i];
            if (file != null) {
                JMenuItem item = new JMenuItem(file.getName());
                for (Iterator al = actionListeners.iterator(); al.hasNext();) {
                    ActionListener l = (ActionListener) al.next();
                    try {
                        item.setActionCommand("file.open_param:"
                                              + file.getCanonicalPath());
                    } catch (IOException ex) {
                        log.log(Level.SEVERE,
                                "IOException during canonicalization of"
                                + " filename", ex);
                    }
                    item.addActionListener(l);
                }
                log.fine("added " + file.getName() + " to menu");

                fileMenu.add(item);
                lastOpenedFiles.add(item);
            }
        }
        return;
    }

    /**
     * Notifies the listener of a change in the view configuration.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void viewConfigurationChanged(ViewConfigurationEvent ev) {
        edgeTypeChanged(ev);
        layoutChanged(ev);
        nodeColorFunctionChanged(ev);
    }

    /**
     * Notifies the listener of a change in the edge type.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void edgeTypeChanged(ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        if (vc.getEdgeType() == EdgeType.LINE_EDGE) {
            lineEdgeItem.setSelected(true);
        } else if (vc.getEdgeType() == EdgeType.LINE_EDGE) {
            curveEdgeItem.setSelected(true);
        }
    }

    /**
     * Notifies the listener of a change in the view layout.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void layoutChanged(ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        if (vc.getLayout() == GraphLayout.BALLOON_TREE_LAYOUT) {
            balloonLayoutItem.setSelected(true);
        } else if (vc.getLayout() == GraphLayout.RADIAL_TREE_LAYOUT) {
            radialLayoutItem.setSelected(true);
        } else if (vc.getLayout() == GraphLayout.FORCE_DIRECTED_LAYOUT) {
            forceDirectedLayoutItem.setSelected(true);
        } else if (vc.getLayout() == GraphLayout.RANDOM_LAYOUT) {
            randomLayoutItem.setSelected(true);
        } else if (vc.getLayout() == GraphLayout.VERTICAL_TREE_LAYOUT) {
            verticalLayoutItem.setSelected(true);
        }

    }

    /**
     * Notifies the listener of a change in the colorization.
     *
     * @param ev the ViewConfigurationEvent
     */
    public void nodeColorFunctionChanged(ViewConfigurationEvent ev) {

        ViewConfigurationModel vc = ev.getViewConfiguration();
        if (vc.getColorFunction() == NodeColorFunction.RED_BLUE) {
            redBlue.setSelected(true);
        } else if (vc.getColorFunction() == NodeColorFunction.BLUE_GRAY) {
            blueGray.setSelected(true);
        } else if (vc.getColorFunction() == NodeColorFunction.YELLOW_BLUE) {
            yellowBlue.setSelected(true);
        } else if (vc.getColorFunction() == NodeColorFunction.MANUAL) {
            manual.setSelected(true);
        }

    }

    /**
     * Updates the attachment menu for a specified node.
     *
     * @param node the node for which to create an attachment menu
     *
     * @return the attachments menu
     */
    private void updateAttachmentsMenu(XebeceTreeNode node) {
        
        // clear old items
        editAttachmentsMenu.removeAll();
        
        // add attachments
        if (node != null) {
            List attachments = node.getAttachments();
            for (Iterator i = attachments.iterator(); i.hasNext();) {
            
                String attachment = (String) i.next();
                JMenuItem attachmentItem = new JMenuItem(attachment);
                attachmentItem.setActionCommand("openAttachment:" + attachment);
                // add actionListeners to attachment item
                for (Iterator ls = actionListeners.iterator(); ls.hasNext();) {
                    ActionListener l = (ActionListener) ls.next();
                    attachmentItem.addActionListener(l);
                }
                editAttachmentsMenu.add(attachmentItem);

            }
        }
    }

    /**
     * Returns our controlListener.
     */
    public ControlListener getControlListener() {
        return new MyControlListener();
    }

    /**
     * Listens for item clicks.
     */
    private class MyControlListener extends ControlAdapter {
        /**
         * Receives click events on visual items.
         *
         * @param item the item on which was clicked
         * @param ev the mouse event
         */
        public void itemClicked(final VisualItem item, final MouseEvent ev) {

            if (item instanceof NodeItem) {

                XebeceTreeNode node = (XebeceTreeNode) item.getEntity();
                updateAttachmentsMenu(node);
            }
            return;
        }
    }

}
