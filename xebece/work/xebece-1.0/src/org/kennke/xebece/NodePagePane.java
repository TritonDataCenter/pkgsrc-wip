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

import java.awt.Component;
import java.awt.Cursor;
import java.awt.Point;
import java.awt.Rectangle;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import java.util.logging.Logger;

import javax.swing.JComponent;
import javax.swing.JDialog;

/**
 * A specialized Swing component, which renders a set of {@link Page}s in
 * a vertical layout.
 *
 * @author Roman Kennke.
 */
public class NodePagePane extends JComponent implements Serializable {

    /** The default width of newly created PageComponents. */
    public static final double DEFAULT_WIDTH = 0.8;

    /** The default width of newly created PageComponents. */
    public static final double DEFAULT_HEIGHT = 0.4;

    /** Our node page model. */
    private NodePageModel nodePage;

    /** My page components. */
    private List pageComponents;

    /** Flag that indicates the mode. */
    private boolean editMode;

    /** Flag that indicates placement mode. */
    private boolean placementMode = false;

    /** The component to be placed. */
    private PageComponent placeComponent;

    /** the current toolbar. */
    private JDialog currentToolbar = null;

    /** the current focus. */
    private ResizableComponent currentFocus = null;


    /** Our focus manager. */
    private FocusManager focusManager;


    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The applications view. */
    private GUI view;

    /** The applications model. */
    private Context model;

    /**
     * Creates a new instance.
     *
     * @param newModel the applications model
     * @param newView the applications view
     */
    public NodePagePane(final Context newModel, final GUI newView) {
        view = newView;
        model = newModel;

        setLayout(null);

        pageComponents = new ArrayList();

        addMouseListener(new MouseEventCapturer());

        focusManager = new FocusManager();
        addFocusListener(focusManager);
        return;
    }

    /**
     * Notifies that the application is going to shut down.
     */
    public final void shutdown() {
        if (currentToolbar != null) {
            currentToolbar.dispose();
            return;
        }
    }

    /**
     * Adds a {@link PageComponent} to this page.
     *
     * @param comp the component to be added.
     */
    private final void addPageComponent(final PageComponent comp) {

        ResizableComponent rcomp = new ResizableComponent(comp, this, view);

        arrange(rcomp);

        pageComponents.add(rcomp);

        add(rcomp);


        log.fine("component added successfully");
        synchronized (rcomp) {
            log.finest("" + rcomp.getWidth());
        }

        if (editMode) {
            rcomp.editMode();
        } else {
            rcomp.viewMode();
        }

        rcomp.addFocusListener(focusManager);
        rcomp.addMouseListener(focusManager);

        revalidate();
        repaint();
        //swingComp.setSize(200,200);
        return;
    }

    /**
     * Arranges the specified sub component according to their relative
     * positions.
     *
     * @param rcomp the sub component to be arranged
     */
    public final void arrange(final ResizableComponent rcomp) {

        PageComponentDimension dim = rcomp.getDimension();
        int ownWidth = getWidth();
        int ownHeight = getHeight();

        log.finest("own width: " + getWidth());
        log.finest("own height: " + getHeight());

        int x = (int) (dim.getX() * ownWidth);
        int y = (int) (dim.getY() * ownHeight);
        int width = (int) (dim.getWidth() * ownWidth);
        int height = (int) (dim.getHeight() * ownHeight);
        synchronized (rcomp) {
            rcomp.setBounds(x, y, width, height);
        }

        return;
    }

    /**
     * Sets the node of which the page is to be displayed.
     *
     * @param node the node of which the page is to be displayed
     */
    public final void setNode(final XebeceTreeNode node) {

        log.fine("show new node page");
        pageComponents.clear();
        removeAll();
        currentFocus = null;
        if (currentToolbar != null) {
            currentToolbar.setVisible(false);
            currentToolbar.dispose();
            currentToolbar = null;
        }

        nodePage = node.getNodePage();
        if (nodePage == null) {
            nodePage = new NodePageModel(model);
            node.setNodePage(nodePage);
        }

        List newPageComponents = nodePage.getPageComponents();
        Iterator newPageIter = newPageComponents.iterator();
        while (newPageIter.hasNext()) {
            PageComponent comp = (PageComponent) newPageIter.next();
            addPageComponent(comp);
        }

        repaint();
        // thats it
    }

    /**
     * Causes the NodePagePane to switch into edit mode.
     */
    public final void editMode() {

        log.fine("edit mode enabled");

        Iterator componentsIter = pageComponents.iterator();
        while (componentsIter.hasNext()) {
            ResizableComponent comp =
                (ResizableComponent) componentsIter.next();
            comp.editMode();
        }

        editMode = true;

        return;
    }

    /**
     * Causes the NodePagePane to switch into view mode.
     */
    public final void viewMode() {

        log.fine("view mode enabled");

        Iterator componentsIter = pageComponents.iterator();
        while (componentsIter.hasNext()) {
            ResizableComponent comp =
                (ResizableComponent) componentsIter.next();
            comp.viewMode();
        }

        editMode = false;
        return;
    }


    /**
     * Switches into placement mode. This shows a crosshair cursor, indicating
     * that the user can now drop a component.
     *
     * @param comp the component to be placed
     */
    public final void placeComponent(final PageComponent comp) {

        placementMode = true;
        placeComponent = comp;
        setCursor(new Cursor(Cursor.CROSSHAIR_CURSOR));
        return;
    }

    /**
     * Cancels the placement action. This shows a normal cursor again.
     */
    public final void cancelPlacement() {
        placementMode = false;
        setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
        return;
    }

    /**
     * Removes the current focused component from this NodePagePane.
     */
    public final void removeComponent() {

        ResizableComponent comp = currentFocus;
        pageComponents.remove(comp);
        remove(comp);
        nodePage.removeComponent(comp.getPageComponent());

        currentFocus = null;
        currentToolbar.setVisible(false);
        currentToolbar.dispose();
        currentToolbar = null;

        repaint();
        return;
    }


    /**
     * Rearranges all children after a size change.
     *
     * @param ownX the x coordinate of the upper left corner
     * @param ownY the y coordinate of the upper left corner
     * @param ownWidth the width of the component
     * @param ownHeight the height of the component
     */
    public final void setBounds(final int ownX,
                                final int ownY,
                                final int ownWidth,
                                final int ownHeight) {
        super.setBounds(ownX, ownY, ownWidth, ownHeight);

        Iterator compIter = pageComponents.iterator();
        while (compIter.hasNext()) {
            ResizableComponent rcomp = (ResizableComponent) compIter.next();

            PageComponentDimension dim = rcomp.getDimension();

            int x = (int) (dim.getX() * ownWidth);
            int y = (int) (dim.getY() * ownHeight);
            int width = (int) (dim.getWidth() * ownWidth);
            int height = (int) (dim.getHeight() * ownHeight);
            rcomp.setBounds(x, y, width, height);
        }
        return;
    }

    /**
     * Rearranges all children after a size change.
     *
     * @param r a rectangle that specifies the size and position of the
     *     component
     */
    public final void setBounds(final Rectangle r) {
        super.setBounds(r);

        int ownWidth = r.width;
        int ownHeight = r.height;

        Iterator compIter = pageComponents.iterator();
        while (compIter.hasNext()) {
            ResizableComponent rcomp = (ResizableComponent) compIter.next();

            PageComponentDimension dim = rcomp.getDimension();

            int x = (int) (dim.getX() * ownWidth);
            int y = (int) (dim.getY() * ownHeight);
            int width = (int) (dim.getWidth() * ownWidth);
            int height = (int) (dim.getHeight() * ownHeight);
            rcomp.setBounds(x, y, width, height);
        }
        return;
    }

    /**
     * A mouse listener that captures click events for component placements.
     *
     * @author Roman Kennke
     */
    class MouseEventCapturer extends MouseAdapter {

        /**
         * Receive a mouse click.
         *
         * @param ev the <code>MouseEvent</code>
         */
        public final void mouseClicked(final MouseEvent ev) {

            log.finer("mouse click captured");

            if (placementMode) {
                int x = ev.getX();
                int y = ev.getY();

                double xRel = (1. / getWidth()) * x;
                double yRel = (1. / getHeight()) * y;
                placeComponent.getDimension().setX(xRel);
                placeComponent.getDimension().setY(yRel);
                addPageComponent(placeComponent);
                nodePage.addComponent(placeComponent);
                view.cancelPlacement();
            }
            return;
        }
    }

    /**
     * Receives mouse click events and manages the focus of the child
     * components.
     *
     * @author Roman Kennke
     */
    class FocusManager extends MouseAdapter implements FocusListener {

        /**
         * Receive mouse click.
         *
         * @param ev the mouse event
         */
        public final void mouseClicked(final MouseEvent ev) {

            log.finer("received focus: ");

            Component comp = ev.getComponent();
            // traverse up to ResizableComponent
            while (!(comp instanceof ResizableComponent)) {
                comp = comp.getParent();
            }

            if (comp instanceof ResizableComponent) {
                log.finer("now we have the resizable component");
            } else {
                log.finer("now we have no resizable component");
            }

            focusComponent((ResizableComponent) comp);

            return;
        }


        /**
         * Receive focus.
         *
         * @param ev the focus event
         */
        public final void focusGained(final FocusEvent ev) {

            log.finer("received focus: ");


            Component comp = ev.getComponent();
            // traverse up to ResizableComponent
            while (!(comp instanceof ResizableComponent)) {
                comp = comp.getParent();
            }

            if (comp instanceof ResizableComponent) {
                log.finer("now we have the resizable component");
            } else {
                log.finer("no resizable component");
            }

            focusComponent((ResizableComponent) comp);

            return;
        }

        /**
         * Lose focus.
         *
         * @param ev the focus event
         */
        public final void focusLost(final FocusEvent ev) {

            log.finer("lost focus: ");

            return;
        }

        /**
         * Sets the focus on the specified component.
         *
         * @param comp the component to be focused
         */
        private void focusComponent(final ResizableComponent comp) {

            if (!editMode) {
                return;
            }


            if (currentFocus != comp) {
                Iterator pageComps = pageComponents.iterator();
                while (pageComps.hasNext()) {
                    ResizableComponent rComp =
                        (ResizableComponent) pageComps.next();
                    rComp.unfocus();
                }

                comp.focus();
                JDialog toolBar = comp.getToolbar();
                Point loc = getLocationOnScreen();
                toolBar.setLocation(loc.x - toolBar.getWidth(),
                                    loc.y - toolBar.getHeight());
                toolBar.setModal(false);
                toolBar.setFocusableWindowState(false);
                if (currentToolbar != null) {
                    currentToolbar.dispose();
                }

                //add(toolBar);
                toolBar.setVisible(true);

                currentToolbar = toolBar;
                currentFocus = comp;
                repaint();
                return;
            } else {
                if (!currentToolbar.isShowing()) {
                    currentToolbar.setVisible(true);
                }
            }
            return;
        }
    }
}
