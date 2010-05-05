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

import java.util.logging.Logger;

import edu.berkeley.guir.prefuse.graph.DefaultTree;
import edu.berkeley.guir.prefuse.graph.Tree;

/**
 * Manages all data that is relevant to a Xebece document, like
 * the actual tree, the background image, the attachments and so on.
 *
 * @author Roman Kennke
 */
public class XebeceDocument implements Cloneable {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The initial size of new root nodes. */
    private static final int ROOT_NODE_SIZE = 5;

    /** The tree. */
    private Tree tree;

    /** The background image settings. */
    private ImageSettings backgroundImageSettings;

    /** The view configuration. */
    private ViewConfigurationModel viewConfig;

    /** All attachments of the current file. */
    private Set attachments;


    /** Our tree change listeners. */
    private Collection treeChangeListeners;

    /** The application model. */
    private Context model;

    /**
     * Creates a new instance.
     *
     * @param newModel the application model
     */
    public XebeceDocument(final Context newModel) {

        model = newModel;
        backgroundImageSettings = new ImageSettings();
        viewConfig = new ViewConfigurationModel();

        treeChangeListeners = new ArrayList();

        attachments = new HashSet();

        MessageFactory mf = MessageFactory.newInstance();
        XebeceTreeNode newTree = new XebeceTreeNode();
        newTree.setName(mf.getMessage("rootNode"));
        newTree.setSize(ROOT_NODE_SIZE);
        //newTree.setColor(Color.white);

        tree = new DefaultTree(newTree);

        return;
    }

    /**
     * Returns the view configuration of this document.
     *
     * @return the view configuration of this document
     */
    public final ViewConfigurationModel getViewConfiguration() {
        return viewConfig;
    }

    /**
     * Sets the view configuration for this document.
     *
     * @param newVc the view configuration to set
     */
    public final void setViewConfiguration(final ViewConfigurationModel newVc) {
        viewConfig.setViewConfiguration(newVc);
    }


    /**
     * Returns the tree of this document.
     *
     * @return the tree of this document
     */
    public final Tree getTree() {
        return tree;
    }

    /**
     * Sets the tree of this document.
     *
     * @param newTree the tree to be set
     */
    public final void setTree(final Tree newTree) {
        tree = newTree;
        notifyTreeChange();
        return;
    }

    /**
     * Returns the background image settings of this document.
     *
     * @return the background image settings of this document
     */
    public final ImageSettings getBackgroundImageSettings() {
        return backgroundImageSettings;
    }

    /**
     * Sets the background image settings of this document.
     *
     * @param newBackgroundImageSettings the background to be set
     */
    public final void setBackgroundImageSettings
        (final ImageSettings newBackgroundImageSettings) {
        backgroundImageSettings.setImageFile
            (newBackgroundImageSettings.getImageFile());
        backgroundImageSettings.setRenderType
            (newBackgroundImageSettings.getRenderType());
        return;
    }

    /**
     * Adds an attachment filename to the list of attachment files.
     *
     * @param attachment the filename to add.
     */
    public final void addAttachmentFile(final File attachment) {

        log.fine("added attachment: " + attachment.getName());
        log.fine("absolute path: " + attachment.getAbsolutePath());

        attachments.add(attachment);
        return;
    }

    /**
     * Returns the list of attachment filenames.
     *
     * @return the list of attachment filenames.
     */
    public final Collection getAttachmentFiles() {
        return attachments;
    }

    /**
     * Clears the list of attachment filenames.
     */
    public final void clearAttachmentFiles() {
        attachments.clear();
        return;
    }


    /**
     * Adds a listener which is interested in changes of the image settings.
     *
     * @param l the listener
     */
    public final void addImageSettingsChangeListener
        (final ImageSettingsChangeListener l) {

        backgroundImageSettings.addImageSettingsChangeListener(l);

        return;
    }

    /**
     * Adds a listener that is interested in changes of the tree structure.
     *
     * @param l the listener
     */
    public final void addTreeChangeListener(final TreeChangeListener l) {

        treeChangeListeners.add(l);
        return;
    }

    /**
     * Notifies all registered TreeChangeListeners of a change in the tree
     * structure.
     */
    private void notifyTreeChange() {

        Iterator lIter = treeChangeListeners.iterator();
        while (lIter.hasNext()) {
            TreeChangeListener l = (TreeChangeListener) lIter.next();
            TreeChangeEvent ev = new TreeChangeEvent(getTree());
            l.treeChanged(ev);
        }

        return;
    }

    /**
     * Sets a new document. This copies all the fields of <code>doc</code>
     * into this object.
     *
     * @param doc the document to be set
     */
    public final void setDocument(final XebeceDocument doc) {

        clearAttachmentFiles();
        Iterator attIter = doc.getAttachmentFiles().iterator();
        while (attIter.hasNext()) {
            File attFile = (File) attIter.next();
            addAttachmentFile(attFile);
        }

        tree = doc.tree;
        setBackgroundImageSettings(doc.backgroundImageSettings);
	notifyTreeChange();
        viewConfig.setViewConfiguration(doc.getViewConfiguration());
	model.setSelectedNode((XebeceTreeNode) tree.getRoot());
        return;
    }

    /**
     * Creates and returns a 1:1 copy of this object.
     *
     * @return  a 1:1 copy of this object
     *
     * @throws CloneNotSupportedException if cloning is not supported
     *
     * @see java.lang.Object#clone
     */
    public final Object clone() throws CloneNotSupportedException {
        XebeceDocument clone = (XebeceDocument) super.clone();

        XebeceTreeNode rootNode = (XebeceTreeNode) tree.getRoot();
        clone.tree = new DefaultTree((XebeceTreeNode) rootNode.clone());

        clone.backgroundImageSettings =
            (ImageSettings) backgroundImageSettings.clone();
        clone.attachments = new HashSet(attachments);
        return clone;
    }
}
