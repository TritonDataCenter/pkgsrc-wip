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

import java.util.Map;
import java.util.WeakHashMap;

import java.util.logging.Level;
import java.util.logging.Logger;

import org.w3c.dom.Element;


public final class PageComponentFactory {

    /** The only instance. */
    private static PageComponentFactory instance = null;

    /** The cached page components. */
    private Map pageComponents;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /**
     * Creates a new instance.
     */
    private PageComponentFactory() {
        pageComponents = new WeakHashMap();
    }


    /**
     * Returns a usable instance.
     *
     * @return a usable instance.
     */
    public static synchronized PageComponentFactory getInstance() {

        if (instance == null) {
            instance = new PageComponentFactory();
        }
        return instance;
    }

    /**
     * Returns a page component.
     *
     * @param el the element for which we return a page component
     *
     * @return a page component.
     */
    public PageComponent getPageComponent(final Element el, Context _model) {

        PageComponent comp = (PageComponent) pageComponents.get(el);
        if (comp == null) {
            if (el.getTagName().equals("text")) {
                comp = new TextPageComponent();
                synchronized (comp) {
                    comp.setModel(_model);
                    comp.setDOMNode(el);
                }

            } else if (el.getTagName().equals("image")) {
                comp = new ImagePageComponent();
                synchronized (comp) {
                    comp.setModel(_model);
                    comp.setDOMNode(el);
                }

            } else {
                log.severe("unknown page component name: "
                           + el.getTagName());
                System.exit(-1);
            }
        }
        synchronized (comp) {
            comp.setModel(_model);
        }
        pageComponents.put(el, comp);

        return comp;
    }

    public PageComponent getPageComponent(String type, Context _model) {

        try {
            Class pcClass = Class.forName(type);
            PageComponent comp = (PageComponent) pcClass.newInstance();
            comp.setModel(_model);
            return comp;
        } catch (ClassNotFoundException ex) {
            log.log(Level.SEVERE, "Class not found: " + type, ex);
            return null;
        } catch (InstantiationException ex) {
            log.log(Level.SEVERE, "Class could not be instantiated: " + type,
                    ex);
            return null;
        } catch (IllegalAccessException ex) {
            log.log(Level.SEVERE, "Class could not be accessed: " + type, ex);
            return null;
        }
    }
}
