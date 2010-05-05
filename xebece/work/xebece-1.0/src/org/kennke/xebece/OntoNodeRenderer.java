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

import java.awt.BasicStroke;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Image;
import java.awt.Shape;
import java.awt.Stroke;

import java.util.List;

import java.util.logging.Logger;

import edu.berkeley.guir.prefuse.VisualItem;

import edu.berkeley.guir.prefuse.render.TextImageItemRenderer;

import edu.berkeley.guir.prefuse.util.FontLib;

/**
 * Renders nodes.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class OntoNodeRenderer extends TextImageItemRenderer {

    /** The icon which symbolizes an attachment. */
    private Image attachmentIcon;

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");


    private static final BasicStroke STROKE1 = new BasicStroke(1.0F);
    private static final BasicStroke STROKE2 = new BasicStroke(2.0F);

    private Context model;

    /**
     * Constructs a new instance of OntoNodeRenderer.
     *
     */
    public OntoNodeRenderer(Context _model) {
        model = _model;

        IconFactory icf = IconFactory.newInstance();
        attachmentIcon = icf.getAWTIcon("node.attachment", "12x12");
        //setRenderType(RENDER_TYPE_FILL);
        return;
    }

    /**
     * Returns the image that should be drawn into the node.
     *
     * @param item the VisualItem for which we return the image.
     *
     * @return the image that should be drawn into the node.
     */
    protected final Image getImage(final VisualItem item) {

        Image icon = null;

        List atts = ((XebeceTreeNode) item.getEntity()).getAttachments();
        if (atts.size() != 0) {

            log.fine("Attachment of the current node: " + atts);

            // in this case we _have_ attachments
            icon = attachmentIcon;
        }

        return icon;
    }


    /**
     * Returns the text that is beeing displayed inside the node.
     *
     * @param item the item for which we return text
     *
     * @return the text that is beeing displayed inside the node
     */
    protected final String getText(final VisualItem item) {

        XebeceTreeNode node = (XebeceTreeNode) item.getEntity();
        String s = node.getName();
        if (s != null) {
            Font font = item.getFont();
            if (font == null) { font = m_font; }
//             FontMetrics fm = DEFAULT_GRAPHICS.getFontMetrics(font);
//             if (fm.stringWidth(s) > MAX_WIDTH) {
//                 s = abbrev.abbreviate(s,
//                                       StringAbbreviator.NAME,
//                                       fm, MAX_WIDTH);
//             }
        } else {
            s = "";
        }
        return s;
    } //

    /**
     * Returns the raw shape for the given visual item.
     *
     * @param item the item for which we return the raw shape.
     *
     * @return the raw shape for the given visual item.
     */
    public final Shape getRawShape(final VisualItem item) {
        XebeceTreeNode node = (XebeceTreeNode) item.getEntity();
        String s = getText(item);
        if (s == null) { s = ""; }
        m_font = item.getFont();

        // make renderer size-aware
        double size = 1.0 + 0.1 * ((double) node.getSize());
        if (size != 1) {
            m_font = FontLib.getFont(m_font.getName(), m_font.getStyle(),
                                    (int) Math.round(size * m_font.getSize()));
        }
        FontMetrics fm = DEFAULT_GRAPHICS.getFontMetrics(m_font);

        double h = fm.getHeight() + size * 2 * m_vertBorder;
        double w = fm.stringWidth(s) + size * 2 * m_horizBorder;

        // check for attachments
        List atts = node.getAttachments();
        if (atts.size() != 0) {

            // in this case we _have_ attachments
            w = w + 8;
        }


        getAlignedPoint(m_tmpPoint, item, w, h, m_xAlign, m_yAlign);
        m_imageBox.setFrame(m_tmpPoint.getX(), m_tmpPoint.getY(), w, h);


        return m_imageBox;
    } //

    public Stroke getStroke(VisualItem item) {

        BasicStroke stroke = null;

        if (item.getEntity() == model.getSelectedNode()) {
            stroke = STROKE2;
        } else {
            stroke = STROKE1;
        }

        //item.setColor(Color.darkGray);
        return stroke;
    }
}
