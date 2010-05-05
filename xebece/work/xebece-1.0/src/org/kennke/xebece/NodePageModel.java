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

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import java.util.logging.Logger;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


/**
 * Models a node page. This manages a page's components.
 *
 * @author Roman Kennke
 */
public class NodePageModel implements Cloneable {

    /** The default border distance. */
    private static final double DEFAULT_BORDER = 0.00;

    /** The default size of a component. */
    private static final double DEFAULT_SIZE = 1.00;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The page components. */
    private List pageComponents;

    /** The application model. */
    private Context model;


    /**
     * Creates a new instance.
     */
    public NodePageModel() {
        pageComponents = new ArrayList();

        PageComponent defaultComp = new TextPageComponent();
        synchronized (defaultComp) {
            defaultComp.setDimension(new PageComponentDimension(DEFAULT_BORDER,
                                                                DEFAULT_BORDER,
                                                                DEFAULT_SIZE,
                                                                DEFAULT_SIZE));
            defaultComp.setModel(null);
        }
        addComponent(defaultComp);
    }


    /**
     * Creates a new instance.
     *
     * @param newModel the application model
     */
    public NodePageModel(final Context newModel) {
        model = newModel;
        pageComponents = new ArrayList();

        PageComponent defaultComp = new TextPageComponent();
        synchronized (defaultComp) {
            defaultComp.setDimension(new PageComponentDimension(DEFAULT_BORDER,
                                                                DEFAULT_BORDER,
                                                                DEFAULT_SIZE,
                                                                DEFAULT_SIZE));
            defaultComp.setModel(newModel);
        }
        addComponent(defaultComp);
    }

    /**
     * Sets the node, for which we currently display the PageComponents.
     *
     * @param pageNode the node in question.
     */
    public final void setDOMNode(final Node pageNode) {

        // clear up the current view
        pageComponents.clear();

        PageComponentFactory pcf = PageComponentFactory.getInstance();

        NodeList childNodes = pageNode.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node child = childNodes.item(i);
            if (child.getNodeType() == Node.ELEMENT_NODE) {
                PageComponent comp = pcf.getPageComponent((Element) child,
                                                          model);
                addComponent(comp);
                log.fine("added component");
            }
        }

        // that's it
        return;
    }

    /**
     * Serializes this NodePagePane into a DOM node.
     *
     * @param doc use this Document to create new nodes
     *
     * @return the serialized NodePagePane
     */
    public final Node getDOMNode(final Document doc) {

        Element pageEl = doc.createElement("page");

        Iterator componentsIter = pageComponents.iterator();
        while (componentsIter.hasNext()) {
            PageComponent comp =
                (PageComponent) componentsIter.next();
            Node node = comp.getDOMNode(doc);
            pageEl.appendChild(node);
        }

        return pageEl;
    }

    /**
     * Returns the page components of this page.
     *
     * @return the page components of this page
     */
    public final List getPageComponents() {
        return pageComponents;
    }


    /**
     * Adds a {@link PageComponent} to this page.
     *
     * @param comp the component to be added.
     */
    public final void addComponent(final PageComponent comp) {

        pageComponents.add(comp);
        log.fine("add page component");
        return;
    }

    /**
     * Removes a component from this page.
     *
     * @param comp the component to be removed
     */
    public final void removeComponent(final PageComponent comp) {
        pageComponents.remove(comp);
        log.fine("remove page component");
    }

    /**
     * Creates and returns a 1:1 copy of this object.
     *
     * @return a 1:1 copy of this object
     *
     * @throws CloneNotSupportedException if cloning is not supported
     *
     * @see java.lang.Object#clone
     */
    public final Object clone() throws CloneNotSupportedException {

        NodePageModel clone = (NodePageModel) super.clone();
        clone.pageComponents = new ArrayList();

        Iterator pageCompIter = pageComponents.iterator();
        while (pageCompIter.hasNext()) {
            PageComponent comp = (PageComponent) pageCompIter.next();
            PageComponent compCopy = (PageComponent) comp.clone();
            clone.pageComponents.add(compCopy);
        }

        return clone;
    }
}
