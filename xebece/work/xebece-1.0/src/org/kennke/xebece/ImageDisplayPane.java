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
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Insets;

import javax.swing.JComponent;


public class ImageDisplayPane extends JComponent {

    private Image image;

    private RenderType renderType = RenderType.PRESERVE_RELATIONS;

    public ImageDisplayPane() {
        setPreferredSize(new Dimension(200, 150));
        return;
    }
    public void setImage(Image _image) {
        image = _image;
        repaint();
        return;
    }

    public void setRenderType(RenderType _renderType) {
        renderType = _renderType;
        repaint();
        return;
    }


    public void paint(Graphics g) {
        super.paint(g);

        Insets insets = getInsets();

        int x = getWidth() - insets.left - insets.right;
        int y = getHeight() - insets.top - insets.bottom;

        if (image != null) {

            if (renderType == RenderType.SCALED_TO_FIT) {
                g.drawImage(image, insets.left, insets.top, x, y, this);
            } else if (renderType == RenderType.PRESERVE_RELATIONS){
                int imX = image.getWidth(this);
                int imY = image.getHeight(this);
                double relComp = ((double) x) / ((double) y);
                double relIm = ((double) imX) / ((double) imY);
                if (relComp > relIm) {
                    int xWidth = (int) (y * relIm);
                    int xOffset = (int) ((x - xWidth) / 2.);
                    g.drawImage(image, xOffset + insets.left,
                                insets.top, xWidth, y, this);
                } else {
                    int yHeight = (int) (x  / relIm);
                    g.drawImage(image, insets.left, insets.top + yHeight,
                                x, yHeight, this);
                }
            }
        } else {
            g.setColor(Color.white);
            g.fillRect(insets.left, insets.top, x, y);
        }
        return;
    }
}
