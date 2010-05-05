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

import java.io.File;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/**
 * Stores and manages settings that affect images, their placement etc.
 *
 * @author Roman Kennke
 */
public class ImageSettings implements Cloneable {

    /** The image file. */
    private File imageFile;

    /** The render type. */
    private RenderType renderType;

    /** The background color. */
    private Color backgroundColor;

    /** Our ImageSettingsChangeListeners. */
    private Collection imageSettingsChangeListeners;

    /**
     * Creates a new instance.
     */
    public ImageSettings() {

        imageFile = null;
        renderType = RenderType.PRESERVE_RELATIONS;
        imageSettingsChangeListeners = new ArrayList();
        backgroundColor = Color.white;

        return;
    }

    /**
     * Adds a listener that is interested in changes to these image settings.
     *
     * @param l the listeners
     */
    public final void addImageSettingsChangeListener
        (final ImageSettingsChangeListener l) {

        imageSettingsChangeListeners.add(l);
        return;
    }

    /**
     * Returns the image file.
     *
     * @return the image file
     */
    public final File getImageFile() {
        return imageFile;
    }

    /**
     * Sets the image file.
     *
     * @param newImageFile the image file to set
     */
    public final void setImageFile(final File newImageFile) {
        imageFile = newImageFile;
        notifyChange();
        return;
    }

    /**
     * Returns the render type.
     *
     * @return the render type
     *
     * @see RenderType
     */
    public final RenderType getRenderType() {
        return renderType;
    }

    /**
     * Sets the render type.
     *
     * @param newRenderType the render type to set
     *
     * @see RenderType
     */
    public final void setRenderType(final RenderType newRenderType) {
        renderType = newRenderType;
        notifyChange();
        return;
    }

    /**
     * Returns the background color setting.
     *
     * @return the background color setting
     */
    public final Color getBackgroundColor() {
        return backgroundColor;
    }

    /**
     * Sets the background color
     *
     * @param newBackgroundColor the background color to set
     */
    public final void setBackgroundColor(final Color newBackgroundColor) {
        backgroundColor = newBackgroundColor;
        notifyChange();
    }

    /**
     * Notifies all registered listeners that a change has occured.
     */
    public final void notifyChange() {

        Iterator lIter = imageSettingsChangeListeners.iterator();
        while (lIter.hasNext()) {
            ImageSettingsChangeListener l =
                (ImageSettingsChangeListener) lIter.next();
            ImageSettingsChangeEvent ev = new ImageSettingsChangeEvent(this);
            l.imageSettingsChanged(ev);
        }
    }

    /**
     * Reads the settings from the DOM node
     *
     * @param domNode the DOM node from which to read the settings
     * @param model the application model
     */
    public final void setDOMNode(final Node domNode, final Context model) {

        Element el = (Element) domNode;

        String imageFileStr = el.getAttribute("imageFile");
        if (imageFileStr.equals("null")) {
            setImageFile(null);
        } else {
            setImageFile(new File(model.getSettings().getTempDir(),
                                  imageFileStr));
        }
        String renderTypeStr = el.getAttribute("renderType");
        RenderType type = null;
        if (renderTypeStr.equals("scaledToFit")) {
            type = RenderType.SCALED_TO_FIT;
        } else {
            type = RenderType.PRESERVE_RELATIONS;
        }
        setRenderType(type);
        return;
    }

    /**
     * Serializes the settings into a DOM node.
     *
     * @param doc the DOM Document which should be used for creating new
     *     DOM Nodes
     *
     * @return the DOM Node for this object
     */
    public final Node getDOMNode(final Document doc) {

        Element imageSettingsEl = doc.createElement("imageSettings");
        if (getImageFile() != null) {
            imageSettingsEl.setAttribute("imageFile",
                                         getImageFile().getName());
        } else {
            imageSettingsEl.setAttribute("imageFile", "null");
        }
        RenderType type = getRenderType();
        if (type == RenderType.SCALED_TO_FIT) {
            imageSettingsEl.setAttribute("renderType", "scaledToFit");
        } else {
            imageSettingsEl.setAttribute("renderType", "preserveRelations");
        }
        return imageSettingsEl;
    }

    /**
     * Creates and returns a clone from this object.
     *
     * @return a clone of this object
     *
     * @throws CloneNotSupportedException if cloning is not supported
     *
     * @see java.lang.Object#clone
     */
    public final Object clone() throws CloneNotSupportedException {

        ImageSettings clone = (ImageSettings) super.clone();

        return clone;
    }
}
