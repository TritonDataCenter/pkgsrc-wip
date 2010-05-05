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

import java.io.File;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import java.util.logging.Level;
import java.util.logging.Logger;

//import org.w3c.dom.Document;


/** Instances of this class hold all the Data in the context of the
 * application.
 * @author Roman Kennke
 * @version $Revision$
 */
public final class Context {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The selected page component class. */
    private String selectedPageComponentType;

    /** The currently open file. */
    private File currentFile;

    /** The cut-n-paste buffer. */
    private XebeceTreeNode cutBuffer = null;

    /** The xebece document. */
    private XebeceDocument document;

    /** The undo snapshot. */
    private XebeceDocument undoSnapshot;

    /** The redo snapshot. */
    private XebeceDocument redoSnapshot;

    /** The listeners for file changes. */
    private Collection fileChangeListeners;

    /** The applications settings. */
    private Settings settings;

    /** The selected node. */
    private XebeceTreeNode selectedNode;

    /** Our node selection change listeners. */
    private Collection nodeSelectionChangeListeners;

    /** The name of the currently selected attachment. */
    private String selectedAttachmentName;

    /** The listeners for undo state changes. */
    private Set undoStateListeners;

    /** Indicates if the current document is changed. */
    private boolean sticky;

    /** Creates a new instance. */
    public Context() {

        document = new XebeceDocument(this);
        undoSnapshot = null;
        fileChangeListeners = new ArrayList();
        settings = new Settings();
        nodeSelectionChangeListeners = new HashSet();
        selectedAttachmentName = null;

        undoStateListeners = new HashSet();

        sticky = false;

        return;
    }

    /**
     * Sets the sticky bit.
     *
     * @param newSticky the new value for the sticky bit
     */
    public void setSticky(final boolean newSticky) {
        sticky = newSticky;
    }

    /**
     * Returns the current value of the sticky bit.
     *
     * @return the current value of the sticky bit
     */
    public boolean isSticky() {
        return sticky;
    }

    /**
     * Sets the undo snapshot from the current state of the document.
     */
    public void setUndoSnapshot() {

            try {
                undoSnapshot = (XebeceDocument) document.clone();
            } catch (CloneNotSupportedException ex) {
                log.log(Level.SEVERE,
                        "Cloning of XebeceDocument not supported", ex);
            }
            notifyUndoStateChanged();
        return;
    }

    /**
     * Performs an undo.
     */
    public void undo() {
            if (undoSnapshot != null) {
                try {
                    redoSnapshot = (XebeceDocument) document.clone();
                    document.setDocument(undoSnapshot);
                    undoSnapshot = null;
                } catch (CloneNotSupportedException ex) {
                    log.log(Level.SEVERE,
                            "Cloning of XebeceDocument not supported", ex);
                }
            }
            notifyUndoStateChanged();
    }

    /**
     * Performs a redo.
     */
    public void redo() {

            if (redoSnapshot != null) {
                try {
                    undoSnapshot = (XebeceDocument) document.clone();
                    document.setDocument(redoSnapshot);
                    redoSnapshot = null;
                } catch (CloneNotSupportedException ex) {
                    log.log(Level.SEVERE,
                            "Cloning of XebeceDocument not supported", ex);
                }
            }
            notifyUndoStateChanged();
    }

    /**
     * Adds a listener that is interested in updates to the undo/redo state.
     *
     * @param l the listener
     */
    public void addUndoStateListener(final UndoStateListener l) {
        if (l != null) {
            undoStateListeners.add(l);
            notifyUndoStateChanged();
        }
    }

    /**
     * Notifies all registered listeners of an update in the undo/redo state.
     */
    private void notifyUndoStateChanged() {

        for (Iterator i = undoStateListeners.iterator();
             i.hasNext();) {

            UndoStateListener l = (UndoStateListener) i.next();
            UndoStateEvent ev = new UndoStateEvent(undoSnapshot != null,
                                                   redoSnapshot != null);
            l.undoStateChanged(ev);
        }
    }

    /**
     * Notify the model that the application shuts down.
     */
    public void shutdown() {
        getSettings().shutdown();
        return;
    }


    /**
     * Returns the currently selected node.
     *
     * @return the currently selected node
     */
    public XebeceTreeNode getSelectedNode() {
        return selectedNode;
    }

    /**
     * Sets the currently selected node.
     *
     * @param newSelectedNode the new selected node
     */
    public void setSelectedNode(final XebeceTreeNode newSelectedNode) {
        selectedNode = newSelectedNode;
        notifyNodeSelectionChange();
        return;
    }

    /**
     * Adds a listener that is interested in notification of node selection
     * changes.
     *
     * @param l the listener
     */
    public void addNodeSelectionChangeListener
        (final NodeSelectionChangeListener l) {

        log.finest("NodeSelectionChangeListener added:");
        log.finest("Type: " + l.getClass().getName());

        nodeSelectionChangeListeners.add(l);
        return;
    }

    /**
     * Notifies all registered listeners of a change in a node selection.
     */
    private void notifyNodeSelectionChange() {

        Iterator lIter = nodeSelectionChangeListeners.iterator();
        while (lIter.hasNext()) {
            NodeSelectionChangeListener l =
                (NodeSelectionChangeListener) lIter.next();
            NodeSelectionChangeEvent ev = new NodeSelectionChangeEvent
                (getSelectedNode());
            l.nodeSelectionChanged(ev);
        }

        return;
    }

    /**
     * Sets the currently selected attachment.
     *
     * @param newSelectedAttachmentName the name of the attachment to be
     *     selected
     */
    public void setSelectedAttachmentName
        (final String newSelectedAttachmentName) {

        selectedAttachmentName = newSelectedAttachmentName;
        return;
    }

    /**
     * Returns the selected attachment name.
     *
     * @return the selected attachment name
     */
    public String getSelectedAttachmentName() {
        return selectedAttachmentName;
    }

    /**
     * Returns the application settings.
     *
     * @return the application settings
     */
    public Settings getSettings() {
        return settings;
    }


    /** Sets the current file.
     * @param file the file to be set as current file.
     */
    public void setCurrentFile(final File file) {

        currentFile = file;
        getSettings().getLastOpenedFiles().addFile(file);
        notifyFileChange();
        return;
    }

    /**
     * Adds a listener that is interested in updates to the current file.
     *
     * @param l the listener
     */
    public void addFileChangeListener(final FileChangeListener l) {
        fileChangeListeners.add(l);
    }

    /**
     * Notifies all registered listeners of an update of the current file.
     */
    private void notifyFileChange() {

        Iterator lIter = fileChangeListeners.iterator();
        while (lIter.hasNext()) {
            FileChangeListener l = (FileChangeListener) lIter.next();
            FileChangeEvent ev = new FileChangeEvent(currentFile);
            l.fileChanged(ev);
        }
        return;
    }


    /** Returns the current file.
     * @return the current file.
     */
    public File getCurrentFile() {
        return currentFile;
    }

    /**
     * Sets the current document.
     *
     * @param newDocument the document to be set
     */
    public void setDocument(final XebeceDocument newDocument) {
            document.setDocument(newDocument);
            sticky = false;
        return;
    }

    /**
     * Returns the current document.
     *
     * @return the current document
     */
    public XebeceDocument getDocument() {
        return document;
    }


    /** Sets the cut buffer to the new value.
     * @param cutNode the new cut buffer value.
     */
    public void setCutBuffer(final XebeceTreeNode cutNode) {
        cutBuffer = cutNode;
        return;
    }

    /** Returns the current value of the cut buffer.
     * @return the current value of the cut buffer.
     */
    public XebeceTreeNode getCutBuffer() {
        return cutBuffer;
    }

    /**
     * Sets the type of the page component to be added next.
     *
     * @param type the classname of the page component
     */
    public void setSelectedPageComponentType(final String type) {
        selectedPageComponentType = type;
        return;
    }

    /**
     * Returns the type of the selected page component.
     *
     * @return the type of the selected page component
     */
    public String getSelectedPageComponentType() {
        return selectedPageComponentType;
    }


}

