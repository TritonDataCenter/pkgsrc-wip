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
import java.awt.Cursor;
import java.awt.Dimension;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.awt.event.FocusListener;

import java.util.logging.Logger;

import javax.swing.JComponent;
import javax.swing.JDialog;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

/**
 * A swing component that wraps another component and makes it resizable by
 * the user.
 *
 * @author Roman Kennke
 */
public class ResizableComponent extends JComponent {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /** The capture border. */
    public static final int CAP_BORDER = 5;

    /** The parent component. */
    private NodePagePane parent;

    /** The component that is embedded in this component. */
    private PageComponent pageComponent;

    /** The Swing Component that is wrapped. */
    private JComponent swingComponent;

    /** Our border. */
    private ResizeBorder border;

    /** The application view. */
    private GUI view;


    /**
     * Creates a new instance of <code>ResizableComponent</code>.
     *
     * @param newPageComponent the component to be embedded.
     * @param newParent the node page pane to which we belong
     * @param newView the application view
     */
    public ResizableComponent(final PageComponent newPageComponent,
                              final NodePagePane newParent,
                              final GUI newView) {

        view = newView;

        pageComponent = newPageComponent;
        parent = newParent;
        swingComponent = pageComponent.getSwingComponent(view);
        setLayout(new BorderLayout());
        add(swingComponent, BorderLayout.CENTER);

        MouseMotionCapturer mm = new MouseMotionCapturer();
        addMouseMotionListener(mm);

        log.finer("new instance created");

        border = new ResizeBorder();
        synchronized (border) {
            border.setFocus(false);
        }
        setBorder(border);
        return;
    }

    /**
     * Switches the PageComponent into edit mode.
     * In this mode, the user should be able to edit the component and
     * its propertues.
     *
     * The Swing component that was returned before in #getSwingComponent
     * should reflect that ability.
     */
    final synchronized void editMode() {
        pageComponent.editMode();
        border.editMode();
        return;
    }

    /**
     * Switches the PageComponent into view mode.
     * In this mode, the user must not be able to edit the component and its
     * properties. Instead, now the component must render itself for viewing
     * on the Swing component that was returned before by #getSwingComponent.
     */
    final synchronized void viewMode() {
        pageComponent.viewMode();
        border.viewMode();
        return;
    }

    /**
     * Focusses this component.
     */
    public final void focus() {
        pageComponent.focus();
        border.setFocus(true);
        return;
    }

    /**
     * Focusses this component.
     */
    public final void unfocus() {
        pageComponent.unfocus();
        border.setFocus(false);
        return;
    }

    /**
     * Returns the toolbar of the wrapped component.
     *
     * @return the toolbar of the wrapped component
     */
    public final JDialog getToolbar() {
        return pageComponent.getToolbar(view);
    }

    /**
     * Sets the component data and its properties as an XML DOM tree fragment.
     *
     * @param node the components node
     */
    public final void setDOMNode(final Node node) {
        pageComponent.setDOMNode(node);
        return;
    }

    /**
     * Creates and returns a DOM representation of the wrapped component.
     *
     * @param doc the DOM Document to use for creating new nodes
     *
     * @return a DOM representation of the wrapped component
     */
    public final Node getDOMNode(final Document doc) {
        return pageComponent.getDOMNode(doc);
    }

    /**
     * Returns the dimension of the wrapped component.
     *
     * @return the dimension of the wrapped component
     */
    public final synchronized PageComponentDimension getDimension() {
        synchronized (pageComponent) {
            return pageComponent.getDimension();
        }
    }

    /**
     * Sets the dimension of the wrapped component.
     *
     * @param dimension the dimension to be set
     */
    public final void setDimension(final PageComponentDimension dimension) {
        pageComponent.setDimension(dimension);
        return;
    }

    /**
     * Adds a mouse listener to this component.
     *
     * @param ml the mouse listener
     */
    public final synchronized void addMouseListener(final MouseListener ml) {
        super.addMouseListener(ml);
        swingComponent.addMouseListener(ml);
        return;
    }

    /**
     * Adds a mouse motion listener to this component.
     *
     * @param ml the mouse listener
     */
    public final synchronized void addMouseMotionListener
        (final MouseMotionListener ml) {

        super.addMouseMotionListener(ml);
        swingComponent.addMouseMotionListener(ml);
        return;
    }


    /**
     * Adds a FocusListener to this component.
     *
     * @param l the focus listener
     */
    public final void addFocusListener(final FocusListener l) {
        super.addFocusListener(l);
        if (swingComponent != null) {
            swingComponent.addFocusListener(l);
        }
        return;
    }

    /**
     * Returns the preferred size of this component.
     *
     * @return the preferred size of this component
     */
    public final Dimension getPreferredSize() {
        return swingComponent.getPreferredSize();
    }

    /**
     * Returns the minimum size of this component.
     *
     * @return the minimum size of this component
     */
    public final Dimension getMinimumSize() {
        return swingComponent.getMinimumSize();
    }

    /**
     * Returns the maximum size of this component.
     *
     * @return the maximum size of this component
     */
    public final Dimension getMaximumSize() {
        return swingComponent.getMaximumSize();
    }

    /**
     * Returns the wrapped component.
     *
     * @return the wrapped component
     */
    public final PageComponent getPageComponent() {
        return pageComponent;
    }


    /**
     * Listens for mouse motion events and enables resizing of the component.
     * This is also responsible for changing the cursor.
     *
     * @author Roman Kennke
     */
    class MouseMotionCapturer implements MouseMotionListener {


        /** Indicates no resizing. */
        private static final int NO_RESIZE = 0;

        /** Indicates resizing on the north west edge. */
        private static final int RESIZE_NW = 1;

        /** Indicates resizing on the north east edge. */
        private static final int RESIZE_NE = 2;

        /** Indicates resizing on the south west edge. */
        private static final int RESIZE_SW = 3;

        /** Indicates resizing on the south east edge. */
        private static final int RESIZE_SE = 4;

        /** The current resize mode. */
        private int resizeMode = NO_RESIZE;

        /**
         * Indicates dragging of the mouse.
         *
         * @param ev the MouseEvent
         */
        public final void mouseDragged(final MouseEvent ev) {

            int x = ev.getX();
            int y = ev.getY();

            PageComponentDimension dim = getDimension();

            int pW = parent.getWidth();
            int pH = parent.getHeight();

            double oldXRel = dim.getX();
            double oldYRel = dim.getY();
            double oldWRel = dim.getWidth();
            double oldHRel = dim.getHeight();

            int oldXAbs = getX();
            int oldYAbs = getY();

            double newX = 0.0;
            double newY = 0.0;
            double newW = 0.0;
            double newH = 0.0;

            switch (resizeMode) {
            case RESIZE_SE:
                newW = (1. / pW) * (x + 3);
                newH = (1. / pH) * (y + 3);
                dim.setWidth(newW);
                dim.setHeight(newH);
                break;
            case RESIZE_NW:

                newX = (1. / pW) * (x + oldXAbs - 3);
                newY = (1. / pH) * (y + oldYAbs - 3);
                newW = oldWRel - (newX - oldXRel);
                newH = oldHRel - (newY - oldYRel);

                if ((newX >= 0.) && (newY >= 0.)) {
                    dim.setX(newX);
                    dim.setWidth(newW);
                    dim.setY(newY);
                    dim.setHeight(newH);
                }
                break;
            case RESIZE_SW:
                newX = (1. / pW) * (x + oldXAbs - 3);
                newW = oldWRel - (newX - oldXRel);
                newH = (1. / pH) * (y + 3);

                if (newX >= 0.) {
                    dim.setX(newX);
                    dim.setWidth(newW);
                    dim.setHeight(newH);
                }
                break;
            case RESIZE_NE:
                newY = (1. / pH) * (y + oldYAbs - 3);
                newH = oldHRel - (newY - oldYRel);
                newW = (1. / pW) * (x + 3);

                if (newY >= 0.) {
                    dim.setY(newY);
                    dim.setHeight(newH);
                    dim.setWidth(newW);
                }
                break;
            default:
                // do nothing here
                break;
            }

            parent.arrange(ResizableComponent.this);
            revalidate();

            return;
        }


        /**
         * Indicates mouse moving.
         *
         * @param ev the MouseEvent
         */
        public final void mouseMoved(final MouseEvent ev) {

            int x = ev.getX();
            int y = ev.getY();

            int w = getWidth();
            int h = getHeight();

            log.finest("mouse move event captured: " + x + ", " + y);

            if ((x < CAP_BORDER) && (y < CAP_BORDER)) {
                // nw
                setCursor(new Cursor(Cursor.NW_RESIZE_CURSOR));
                resizeMode = RESIZE_NW;
            } else if ((x > (w - CAP_BORDER)) && (y < CAP_BORDER)) {
                // ne
                setCursor(new Cursor(Cursor.NE_RESIZE_CURSOR));
                resizeMode = RESIZE_NE;
            } else if ((x < CAP_BORDER) && (y > (h - CAP_BORDER))) {
                // sw
                setCursor(new Cursor(Cursor.SW_RESIZE_CURSOR));
                resizeMode = RESIZE_SW;
            } else if ((x > (w - CAP_BORDER)) && (y > (h - CAP_BORDER))) {
                // se
                setCursor(new Cursor(Cursor.SE_RESIZE_CURSOR));
                resizeMode = RESIZE_SE;
            } else {
                setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
                resizeMode = NO_RESIZE;
            }
        }
    }
}
