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

import javax.swing.JComponent;
import javax.swing.JDialog;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

/**
 * A component which can be displayed in a {@link NodePagePane}.
 *
 * Such a component has the following requirements:
 * <ul>
 *   <li>must provide a Swing component for rendering,</li>
 *   <li>must provide a view mode for viewing this component,</li>
 *   <li>must provide an edit mode for editing this component,</li>
 *   <li>must be able to parse its properties out of an XML DOM tree,</li>
 *   <li>must be able to serialize its properties into an XML DOM tree</li>
 * </ul>
 *
 * These requirements are expressed in this interface.
 *
 * @author Roman Kennke
 */
public interface PageComponent extends Cloneable {

    /**
     * Returns the name of this component as it should be displayed.
     *
     * @return the name of this component as it should be displayed
     */
    String getDisplayName();

    /**
     * Returns a Swing component which is then used to display the
     * PageComponent.
     *
     * @param view the application view
     *
     * @return a usable Swing component.
     */
    JComponent getSwingComponent(GUI view);

    /**
     * Returns the toolbar of the PageComponent or <code>null</code> if it
     * has none.
     *
     * @param view the application view
     *
     * @return the toolbar of the PageComponent or <code>null</code> if it
     *     has none
     */
    JDialog getToolbar(GUI view);

    /**
     * Sets the application model.
     *
     * @param model the application model
     */
    void setModel(Context model);

    /**
     * Switches the PageComponent into edit mode.
     * In this mode, the user should be able to edit the component and
     * its propertues.
     *
     * The Swing component that was returned before in #getSwingComponent
     * should reflect that ability.
     */
    void editMode();

    /**
     * Switches the PageComponent into view mode.
     * In this mode, the user must not be able to edit the component and its
     * properties. Instead, now the component must render itself for viewing
     * on the Swing component that was returned before by #getSwingComponent.
     */
    void viewMode();

    /**
     * Focuses the component.
     */
    void focus();

    /**
     * Removes the focus from component.
     */
    void unfocus();

    /**
     * Sets the component data and its properties as an XML DOM tree fragment.
     *
     * @param node the components node
     */
    void setDOMNode(Node node);

    /**
     * Serializes the component and its properties into an XML DOM tree
     * fragment.
     * This method should not modify the <code>node</code> that was
     * supplied as argument. Instead it should only use it to create new
     * DOM Nodes, which is then returned by this method. The caller of this
     * method is responsibly to add the returned note in the right place in
     * the document.
     *
     * @param doc use this document to create new nodes
     *
     * @return the node that represents this PageComponent and its properties
     */
    Node getDOMNode(Document doc);


    /**
     * Sets the dimension for this component.
     *
     * @param newDimension the dimension to be set.
     */
    void setDimension(PageComponentDimension newDimension);

    /**
     * Returns the dimension of this component.
     *
     * @return the dimension of this component.
     */
    PageComponentDimension getDimension();

    /**
     * Clones the component.
     *
     * @return a 1:1 copy of the component
     *
     * @throws CloneNotSupportedException if cloning is not supported
     *
     * @see java.lang.Object#clone
     */
    Object clone() throws CloneNotSupportedException;
}
