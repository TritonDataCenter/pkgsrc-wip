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

import java.awt.Graphics;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Rectangle;
import java.awt.Toolkit;

import java.awt.image.BufferedImage;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import java.io.File;
import java.io.IOException;

import java.net.MalformedURLException;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JDialog;
import javax.swing.JToolBar;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;


/**
 * A {@link PageComponent} that displays an image.
 *
 * @author Roman Kennke
 */
public class ImagePageComponent implements PageComponent {

    /** The Swing component that actually draws the image. */
    private volatile ImageDisplayComponent comp;

    /** The size and position of the component. */
    private PageComponentDimension dim;

    /** The filename of the image. */
    private String imageName;

    private Context model;

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");


    public ImagePageComponent() {

        dim = new PageComponentDimension(0.0, 0.0,
                                         NodePagePane.DEFAULT_WIDTH,
                                         NodePagePane.DEFAULT_HEIGHT);

    }

    /**
     * Returns the name of this component as it should be displayed.
     *
     * @return the name of this component as it should be displayed
     */
    public final String getDisplayName() {
        MessageFactory mf = MessageFactory.newInstance();
        return mf.getMessage("componentLabel.image");
    }

    public void setModel(Context _model) {
        model = _model;
    }

    /**
     * Returns a Swing component which is then used to display the
     * PageComponent.
     *
     * @return a usable Swing component.
     */
    public final JComponent getSwingComponent(GUI _view) {

        if (comp == null) {
            createSwingComponent(_view);
        }
        return comp;
    }

    /**
     * Switches the PageComponent into edit mode.
     * In this mode, the user should be able to edit the component and
     * its propertues.
     *
     * The Swing component that was returned before in #getSwingComponent
     * should reflect that ability.
     */
    public final void editMode() {
        if (comp != null) {
            comp.editMode();
        }
        return;
    }

    /**
     * Switches the PageComponent into view mode.
     * In this mode, the user must not be able to edit the component and its
     * properties. Instead, now the component must render itself for viewing
     * on the Swing component that was returned before by #getSwingComponent.
     */
    public final void viewMode() {

        if (comp != null) {
            comp.viewMode();
        }
        return;
    }


    public void focus() {

    }

    public void unfocus() {

    }

    public JDialog getToolbar(final GUI _view) {

        JDialog toolbarFrame = _view.createDialog();

        IconFactory icf = IconFactory.newInstance();
        JToolBar toolbar = new JToolBar();
        JButton selectButton = new JButton();
        selectButton.setIcon(icf.getSwingIcon("image.insert", "24x24"));
        selectButton.addActionListener
            (new ActionListener() {
                    public final void actionPerformed
                        (final ActionEvent ev) {
                        FileFilters filters = new FileFilters();
                        File file = _view.showFileDialog
                            ("select image", filters,
                             GUI.OPEN_FILE);

                        Settings settings = model.getSettings();
                        File tempDir = settings.getTempDir();

                        File copy = new File(tempDir, file.getName());
                        try {
                            Utils.copyFile(file, copy);
                        } catch (IOException ex) {
                            log.log(Level.SEVERE,
                                    "file could not be copied", ex);
                            System.exit(0);
                        }


                        //model.getDocument().addAttachmentFile(file);
                        imageName = copy.getName();

                        log.fine("image selected: " + copy.getAbsolutePath());

                        comp.loadImage();
                    }
                });
        toolbar.add(selectButton);
        toolbarFrame.getContentPane().add(toolbar);
        toolbarFrame.pack();
        return toolbarFrame;

    }


    /**
     * Sets the component data and its properties as an XML DOM tree fragment.
     *
     * @param node the components node
     */
    public final void setDOMNode(final Node node) {


        if (node.getNodeType() == Node.ELEMENT_NODE) {

            // read dimension
            Element el = (Element) node;
            String xStr = el.getAttribute("xPos");
            String yStr = el.getAttribute("yPos");
            String widthStr = el.getAttribute("width");
            String heightStr = el.getAttribute("height");

            double x = 0;
            double y = 0;
            double width = NodePagePane.DEFAULT_WIDTH;
            double height = NodePagePane.DEFAULT_HEIGHT;
            try {
                x = Double.parseDouble(xStr);
            } catch (NumberFormatException ex) {
                log.warning("x coordinate could not be parsed");
            }
            try {
                y = Double.parseDouble(yStr);
            } catch (NumberFormatException ex) {
                log.warning("y coordinate could not be parsed");
            }
            try {
                width = Double.parseDouble(widthStr);
            } catch (NumberFormatException ex) {
                log.warning("y coordinate could not be parsed");
            }
            try {
                height = Double.parseDouble(heightStr);
            } catch (NumberFormatException ex) {
                log.warning("y coordinate could not be parsed");
            }

            dim = new PageComponentDimension(x, y, width, height);


            imageName = el.getAttribute("href");

            if (comp != null) {
                comp.loadImage();
            }
        }
    }

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
    public final Node getDOMNode(final Document doc) {

        Element imageEl = doc.createElement("image");
        imageEl.setAttribute("xPos", String.valueOf(dim.getX()));
        imageEl.setAttribute("yPos", String.valueOf(dim.getY()));
        imageEl.setAttribute("width", String.valueOf(dim.getWidth()));
        imageEl.setAttribute("height", String.valueOf(dim.getHeight()));
        imageEl.setAttribute("href", imageName);

        return imageEl;
    }


    /**
     * Sets the dimension for this component.
     *
     * @param newDimension the dimension to be set.
     */
    public final void setDimension(final PageComponentDimension newDimension) {
        dim = newDimension;
        return;
    }

    /**
     * Returns the dimension of this component.
     *
     * @return the dimension of this component.
     */
    public final PageComponentDimension getDimension() {
        return dim;
    }






    /**
     * Creates the swing component that displays the image.
     *
     * @return the newly created Swing component
     */
    private void createSwingComponent(GUI _view) {

        ImageDisplayComponent newComp =
            new ImageDisplayComponent(_view);
        newComp.editMode();
        if (imageName != null) {
            newComp.loadImage();
        }
        comp = newComp;
        return;
    }


    public Object clone() throws CloneNotSupportedException {

        ImagePageComponent clone = (ImagePageComponent) super.clone();
        clone.comp = null;
        clone.dim = (PageComponentDimension) dim.clone();

        return clone;

    }


    /**
     * The Swing component that actually draws the image.
     *
     * @author Roman Kennke
     */
    class ImageDisplayComponent extends JComponent {

        /** The image to be drawn. */
        private Image image;

        /** The image, prepared for drawing on this component. */
        private BufferedImage preparedImage;


        /**
         * Creates a new instance of <code>ImageDisplayComponent</code>.
         */
        public ImageDisplayComponent(GUI _view) {
            super();
            return;
        }


        /**
         * Sets the image that should be displayed inside this component.
         *
         * @param newImage the image that should be displayed
         */
        public final void setImage(final Image newImage) {
            image = newImage;
            prepareImage();
            repaint();
            return;
        }

        /**
         * Prepares the image for drawing on this component.
         */
        private void prepareImage() {

            if (image == null) {
                log.info("could not prepare null image");
                return;
            }
            int width = getWidth();
            int height = getHeight();
            if ((width <= 0) || (height <= 0)) {
                log.info("could not prepare image: component size is not"
                         + " valid" + width + "," + height);
                return;
            }
            preparedImage = new BufferedImage(width, height,
                                              BufferedImage.TYPE_INT_RGB);
            Graphics g = preparedImage.createGraphics();
            g.drawImage(image, 0, 0, width, height, this);
            
            log.info("prepared image");
            return;
        }


        /**
         * Loads the specified image.
         */
        public final void loadImage() {

            Settings settings = model.getSettings();
            File tempDir = settings.getTempDir();
            File file = new File(tempDir, imageName);


            model.getDocument().addAttachmentFile(file);

            Toolkit tk = Toolkit.getDefaultToolkit();
            Image newImage = null;
            try {
                newImage = tk.getImage(file.toURL());
            } catch (MalformedURLException ex) {
                log.severe("the image could not be loaded");
                log.severe("corrupt filename: " + file.getName());
            }

            MediaTracker tracker = new MediaTracker(this);
            tracker.addImage(newImage, 0);
            try {
                tracker.waitForID(0);
            } catch (InterruptedException e) {
                log.throwing("org.kennke.xebece.ImagePageComponent",
                            "loadImage", e);
            }

            log.fine("image loaded: " + file.getAbsolutePath());

            setImage(newImage);

            return;
        }

        /**
         * Switches into edit mode.
         */
        public void editMode() {

        }

        /**
         * Switches into view mode.
         */
        public void viewMode() {

        }


        /**
         * Paints the component.
         *
         * @param g the <code>Graphics</code> instance to use
         */
        public final void paint(final Graphics g) {

            if (preparedImage == null) {
                prepareImage();
            }
            if (preparedImage != null) {
                g.drawImage(preparedImage, 0, 0, getWidth(), getHeight(), this);
            }
            return;
        }


        public void setBounds(int x, int y, int w, int h) {
            super.setBounds(x, y, w, h);
            prepareImage();
        }

        public void setBounds(Rectangle r) {
            super.setBounds(r);
            prepareImage();
        }

    }

}
