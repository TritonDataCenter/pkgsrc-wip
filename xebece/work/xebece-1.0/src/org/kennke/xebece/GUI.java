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
import java.awt.Graphics;

import java.awt.event.ActionListener;

import java.io.File;

import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JPanel;

import edu.berkeley.guir.prefuse.ItemRegistry;
import edu.berkeley.guir.prefuse.graph.TreeNode;


/**
 *
 * @author roman
 */
public interface GUI extends TreeChangeListener,
                                 NodeSelectionChangeListener,
                                 FileChangeListener,
                                 ViewConfigurationListener {


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



    
    /**
     * Starts the GUI.
     *
     */
    void startGUI();

    /**
     * Creates and returns the main pane.
     *
     * @return the main pane
     */
    JPanel createMainPane();

    /**
     * Causes the display engine to shutdown the application.
     */
    void shutdown();

    /**
     * Adds an action listener to the view and its subcomponents.
     *
     * @param l the listener
     */
    void addActionListener(final ActionListener l);

    /**
     * Creates a fresh dialog for this application.
     *
     * @return the newly created dialog
     */
    JDialog createDialog();

    /**
     * Toggles the display of the attachment palette and update the menus etc.
     */
    void toggleAttachmentPalette();

    /**
     * Updates the display of the attachment palette, according to the
     * setting in the menus.
     */
    void updateAttachmentPalette();


    /**
     * Toggles the display of the node properties palette and update
     * the menus etc.
     */
    void toggleNodeEditorPalette();

    /**
     * Updates the display of the attachment palette, according to the
     * setting in the menus.
     */
    void updateNodeEditorPalette();

    /**
     * Opens a find node dialog.
     *
     * @param action the action that is beeing called on user input
     */
    void startFindDialog(final EditFindAction action);

    /** Opens a file dialog.
     * @param title the file dialogs title.
     * @param filters file filters for the file dialog.
     * @param type the type of the dialog. May be OPEN_FILE or
     *     SAVE_FILE.
     * @return the selected file, or <code>null</code> if no file was selected.
     */
    File showFileDialog(final String title,
                                     final FileFilters filters,
                                     final int type);

    /** Shows a status message.
     * @param status the message to be shown.
     */
    void setStatus(final String status);

    /**
     * Returns the main frame of the application.
     *
     * @return the main frame of the application
     */
    JFrame getMainFrame();

    /**
     * Returns the view configuration of this View.
     *
     * @return the view configuration of this View.
     */
    ViewConfiguration getViewConfiguration();
    
    /** Centers the tree view on the specified node.
     * @param node the node on which to center the view.
     */
    void centerNode(final TreeNode node);
    /**
     * Opens a dialog for choosing a color.
     *
     * @param preColor the color that is currently selected
     *
     * @return the chosen color or <code>null</code> if no color has been
     *     chosen.
     */
    Color showColorDialog(final Color preColor);


    /** Shows a confirmation dialog.
     * @param message the message to be displayed.
     * @return View.OK_OPTION if the user confirmed,
     *         View.NO_OPTION if the user declined or
     *         View.CANCEL_OPTION if the user cancelled.
     */
    int showConfirmDialog(final String message);

    /** Returns the width of the HyperBolic Tree view component.
     * @return the width of the HyperBolic Tree view component.
     */
    int getHTViewWidth();

    /** Returns the height of the HyperBolic Tree view component.
     * @return the height of the HyperBolic Tree view component.
     */
    int getHTViewHeight();

    void paintHTView(final Graphics g);

    /** Shows an information dialog.
     * @param message the message to display.
     */
    void showInformationDialog(final String message);


    /**
     * Shows a dialog that prompts the user to input the labels
     * of new child nodes.
     *
     * @param action the NewChildrenAction instance for callback.
     */
    void showNewChildNodesDialog(final NewChildrenAction action);

    /**
     * Switches to fullscreen mode.
     *
     * @param actions the applications controller
     */
    void switchFullScreenMode(final Controller actions);

    /**
     * Determines if we are currently in fullscreen mode.
     *
     * @return <code>true</code> if we are in fullscreen mode,
     *     <code>false</code> otherwise
     */
    boolean isFullScreen();

    /**
     * Causes the display to refesh itself.
     */
    void refresh();

    /**
     * Removes the currently selected presentation component.
     */
    void removeComponent();

    /**
     * Sets the application window title.
     *
     * @param title the title to be set
     */
    void setTitle(final String title);

    /**
     * Shows an error message.
     *
     * @param ex the error
     */
    void showErrorMessage(final Throwable ex);


    /**
     * Starts the placement of a presentation component.
     *
     * @param comp the component to be placed
     */
    void placeComponent(final PageComponent comp);

    void cancelPlacement();


    /**
     * Returns the tree display component.
     *
     * @return the tree display component
     */
    ImageDisplay getImageDisplay();

    /**
     * Returns the item registry.
     *
     * @return the item registry
     */
    ItemRegistry getItemRegistry();

    /**
     * Returns the menu bar.
     *
     * @return the menu bar
     */
    OntoMenuBar getMenuBar();


}
