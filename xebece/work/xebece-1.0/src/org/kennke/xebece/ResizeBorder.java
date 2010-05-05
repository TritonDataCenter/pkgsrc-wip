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
import java.awt.Color;
import java.awt.Component;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.RenderingHints;

import javax.swing.border.AbstractBorder;

public class ResizeBorder extends AbstractBorder {

    private static final BasicStroke DEFAULT_STROKE = new BasicStroke(1.0F);
    private static final BasicStroke FOCUS_STROKE = new BasicStroke(1.5F);

    private static final int WIDTH = 5;
    private static final Insets myInsets = new Insets(WIDTH,
                                                      WIDTH,
                                                      WIDTH,
                                                      WIDTH);


    private boolean focus;

    private boolean editMode = true;

    public Insets getBorderInsets(Component c) {
        return myInsets;
    }

    /**
     * Paints the border for the specified component with the specified
     * position and size.
     *
     * @param c the component for which this border is being painted
     * @param g the paint graphics
     * @param x the x position of the painted border
     * @param y the y position of the painted border
     * @param width the width of the painted border
     * @param height the height of the painted border
     */
    public void paintBorder(Component c, Graphics g, int x, int y,
                            int width, int height) {

        Graphics2D g2d = (Graphics2D) g;
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                             RenderingHints.VALUE_ANTIALIAS_ON);
        int cWidth = c.getWidth();
        int cHeight = c.getHeight();

        // background
        g.setColor(Color.white);
        g.fillRect(x, y, width, height);

        if (editMode) {



            // border line
            if (focus) {
                g2d.setColor(Color.darkGray);
                g2d.setStroke(FOCUS_STROKE);
            } else {
                g2d.setColor(Color.lightGray);
            }
            g2d.drawRect(x + 3, y + 3, width - 6, height - 6);

            g2d.setStroke(DEFAULT_STROKE);
            // upper left square
            g2d.setColor(Color.green);
            g2d.fillRect(0, 0, WIDTH - 1, WIDTH - 1);
            g2d.setColor(Color.darkGray);
            g2d.drawRect(0, 0, WIDTH - 1, WIDTH - 1);

            // upper right square
            g2d.setColor(Color.green);
            g2d.fillRect(cWidth - WIDTH, 0, WIDTH - 1, WIDTH - 1);
            g2d.setColor(Color.darkGray);
            g2d.drawRect(cWidth - WIDTH, 0, WIDTH - 1, WIDTH - 1);

            // lower left square
            g2d.setColor(Color.green);
            g2d.fillRect(0, cHeight - WIDTH, WIDTH - 1, WIDTH - 1);
            g2d.setColor(Color.darkGray);
            g2d.drawRect(0, cHeight - WIDTH, WIDTH - 1, WIDTH - 1);

            // lower right square
            g2d.setColor(Color.green);
            g2d.fillRect(cWidth - WIDTH, cHeight - WIDTH, WIDTH - 1, WIDTH - 1);
            g2d.setColor(Color.darkGray);
            g2d.drawRect(cWidth - WIDTH, cHeight - WIDTH, WIDTH - 1, WIDTH - 1);
        } else {
            // view mode
            g2d.setStroke(DEFAULT_STROKE);
            g2d.drawRect(x + 3, y + 3, width - 6, height - 6);

        }
        return;
    }

    public void setFocus(boolean focusFlag) {
        focus = focusFlag;
        return;
    }

    public void viewMode() {
        editMode = false;
    }

    public void editMode() {
        editMode = true;
    }
}
