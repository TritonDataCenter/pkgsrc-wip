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
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Toolkit;

import java.awt.geom.Point2D;

import java.awt.image.BufferedImage;

import java.io.File;

import java.util.logging.Logger;

import java.security.AccessControlException;

import java.util.Map;
import java.util.HashMap;

import edu.berkeley.guir.prefuse.Display;
import edu.berkeley.guir.prefuse.ItemRegistry;

/**
 * A Swing component for displaying Prefuse graphs, with the extension of
 * a background image display.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class ImageDisplay extends Display
    implements ImageSettingsChangeListener {

    /** The image to be displayed in the background. */
    private Image image;

    /** The last image file. */
    private File lastImageFile;

    /** The image, prepared for drawing on this component. */
    private BufferedImage preparedImage;

    /** The background color. */
    private Color backgroundColor;

    /** The render type. */
    private RenderType renderType;

    /** Indicates if the display is blanked out or not. */
    private boolean blanked = false;

    private final MediaTracker tracker;

    /** Our rendering hints. */
    private Map renderingHints;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /**
     * Creates a new instance.
     */
    public ImageDisplay() {
        super();
        renderingHints = new HashMap();

        image = null;
        prepareImage();
        renderType = RenderType.PRESERVE_RELATIONS;
        backgroundColor = Color.white;

	tracker = new MediaTracker(this);

        renderingHints.put(RenderingHints.KEY_TEXT_ANTIALIASING,
                           RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);

        return;
    }

    /**
     * Creates a new instance with an initial ItemRegistry.
     *
     * @param registry the initial ItemRegistry.
     */
    public ImageDisplay(final ItemRegistry registry) {
        super(registry);
	tracker = new MediaTracker(this);
    }

    /**
     * Sets the image that should be painted in the background.
     *
     * @param newImage the image to be painted in the background.
     */
    public final void setImage(final Image newImage) {

        log.entering("org.kennke.xebece.ImageDisplay", "setImage");
        if (newImage == null) {
            log.fine("image is null");
        }
        image = newImage;
        prepareImage();
        return;
    }


    /**
     * Called by the paint(Graphics) method, before all other stuff is painted.
     *
     * @param g the Graphics2D object for use with painting.
     */
    public final void prePaint(final Graphics2D g) {
        //super.paintComponent(g);

        log.entering("org.kennke.xebece.ImageDisplay", "prePaint");

        if (preparedImage != null) {

            log.fine("image is not null");

            Point2D ptSrc = new Point2D.Double(0., 0.);
            Point2D ptDst = m_itransform.transform(ptSrc, null);

            Point2D ptScale = new Point2D.Double
                ((double) preparedImage.getWidth(),
                 (double) preparedImage.getHeight());
            Point2D ptScaleDst = m_itransform.deltaTransform(ptScale, null);

            g.drawImage(preparedImage,
                        (int) ptDst.getX(), (int) ptDst.getY(),
                        (int) ptScaleDst.getX(), (int) ptScaleDst.getY(),
                        this);
        }

        return;
    }

    /**
     * Prepares the image for drawing on this component.
     */
    private synchronized void prepareImage() {


        if ((image == null) || (tracker.checkAll() == false)) {
            preparedImage = null;
            return;
        }

        log.fine("preparing image");

        int x = getWidth();
        int y = getHeight();
        if ((x <= 0) || (y <= 0))
            return;
        preparedImage = new BufferedImage(x, y, BufferedImage.TYPE_INT_RGB);
        Graphics g = preparedImage.createGraphics();

        g.setColor(backgroundColor);
        g.fillRect(0, 0, x, y);


        if (renderType == RenderType.SCALED_TO_FIT) {
            g.drawImage(image, 0, 0, x, y, this);
        } else if (renderType == RenderType.PRESERVE_RELATIONS) {
            int imX = image.getWidth(this);
            int imY = image.getHeight(this);
            double relComp = ((double) x) / ((double) y);
            double relIm = ((double) imX) / ((double) imY);
            if (relComp > relIm) {
                log.finer("image prepare");
                int xWidth = (int) (y * relIm);
                int xOffset = (int) ((x - xWidth) / 2.);
                g.drawImage(image, xOffset, 0, xWidth, y, this);
            } else {
                log.finer("image prepare");
                int yHeight = (int) (x  / relIm);
                int yOffset = (int) ((y - yHeight) / 2.);
                g.drawImage(image, 0, yOffset, x, yHeight, this);
            }
        }
        g.dispose();
        return;
    }

    /**
     * Moves and resizes this component. The new location of the top-left
     * corner is specified by x and y, and the new size is specified by width
     * and height.
     *
     * @param x the x coordinate of the top left corner.
     * @param y the y coordinate of the top left corner.
     * @param w the width of the component.
     * @param h the height of the component.
     */
    public final void setBounds(final int x, final int y, final int w,
                                final int h) {
        super.setBounds(x, y, w, h);
        prepareImage();
        return;
    }

    /**
     * Moves and resizes this component to conform to the new bounding
     * rectangle r. This component's new position is specified by r.x and
     * r.y, and its new size is specified by r.width and r.height.
     *
     * @param r the new bounding rectangle for this component
     */

    public final void setBounds(final Rectangle r) {
        super.setBounds(r);
        prepareImage();
        return;
    }


    /**
     * Resizes this component so that it has width <code>w</code>
     * and height <code>h</code>.
     *
     * @param w the new width of this component in pixels.
     * @param h the new height of this component in pixels.
     */
    public final void setSize(final int w, final int h) {
        super.setSize(w, h);
        prepareImage();
        return;
    }

    /**
     * Resizes this component so that it has width <code>d.width</code>
     * and height <code>d.height</code>.
     *
     * @param d the dimension specifying the new size of this component
     */
    public final void setSize(final Dimension d) {
        super.setSize(d);
        prepareImage();
        return;
    }

    /**
     * Sets the status of the blanked flag. This indicates if the display
     * is (temporarily) blanked out.
     *
     * @param newBlanked the blanked flag to be set
     */
    public final void setBlanked(final boolean newBlanked) {
        blanked = newBlanked;
        if (blanked) {
            setCursor(new Cursor(Cursor.WAIT_CURSOR));
        } else {
            setCursor(Cursor.getDefaultCursor());
        }

	invalidate();
    }

    /**
     * Paints this component.
     *
     * @param g the Graphics context for painting
     */
    public final void paint(final Graphics g) {

        if (!blanked) {
            super.paint(g);
        } else {
            g.setColor(Color.white);
            g.fillRect(0, 0, getWidth(), getHeight());
        }
    }

    /**
     * Receives notification of changes to the image settings. This triggers
     * an update in the display.
     *
     * @param ev the event
     */
    public final synchronized void imageSettingsChanged
        (final ImageSettingsChangeEvent ev) {

        log.fine("image settings changed.. updating view");
        ImageSettings settings = ev.getImageSettings();

        renderType = settings.getRenderType();
        backgroundColor = settings.getBackgroundColor();

        File imageFile = settings.getImageFile();
        if (imageFile != null) {

            if (!imageFile.equals(lastImageFile)) {
                lastImageFile = imageFile;
                preparedImage = null;
                image = null;

                Toolkit tk = Toolkit.getDefaultToolkit();
                try {
                    image = tk.getImage(imageFile.getAbsolutePath());
                } catch (AccessControlException ex) {
                    log.throwing("org.kennke.xebece.ImageDisplay",
                                 "imageSettingsChanged", ex);
                }

                //Thread thread = new Thread(new Runnable() {
                //        public void run() {
                            tracker.addImage(image, 0);
                            try {
                                tracker.waitForID(0);
                            } catch (InterruptedException e) {
                                log.throwing("org.kennke.xebece.ImageDisplay",
                                             "imageSettingsChanged", e);
                            }
                            prepareImage();
                            repaint();
                //        }});
                //thread.setPriority(Thread.MAX_PRIORITY);
                //thread.start();
            }
        } else {
            image = null;
            preparedImage = null;
        }
        repaint();
        return;
    }

    public void forceRepaint() {
        m_repaint = false;
        repaint();
    }

    /**
     * Adds a rendering hint.
     *
     * @param key the rendering hint key
     * @param value the rendering hint value
     */
    public void addRenderigHint(RenderingHints.Key key, Object value) {
        renderingHints.put(key, value);
    }

    protected void setRenderingHints(Graphics2D g) {
        super.setRenderingHints(g);
        if (renderingHints != null) {
            g.setRenderingHints(renderingHints);
        } // else {
          //  g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING,
        // RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);
    //}
    }
}
