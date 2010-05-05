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

/**
 * The dimension of a {@link PageComponent}.
 * The dimension of a <code>PageComponent</code> is made up of four values:
 * the  x position, y position, width and height.
 *
 * Each value is represented as a <code>double</code> value, that is relative
 * to the parent NodePagePane component's dimension. This means, that a
 * dimension of (0.0, 0.0, 1.0, 1.0) is the dimension of the parent component.
 *
 * @author Roman Kennke
 */
public class PageComponentDimension implements Cloneable {

    /** The X position. */
    private double x;

    /** The Y position. */
    private double y;

    /** The width. */
    private double width;

    /** The height. */
    private double height;

    /**
     * Creates a new instance of <code>PageComponentDimension</code>.
     *
     * @param newX the X position.
     * @param newY the Y position.
     * @param newWidth the width.
     * @param newHeight the height.
     */
    public PageComponentDimension(final double newX, final double newY,
                                  final double newWidth,
                                  final double newHeight) {

        if ((newX < 0.0) || (newX > 1.0)) {
            throw new IllegalArgumentException
                ("the X position may not be smaller than 0 or greater then 1");
        }
        if ((newY < 0.0) || (newY > 1.0)) {
            throw new IllegalArgumentException
                ("the Y position may not be smaller than 0 or greater then 1");
        }
        if ((newWidth < 0.0) || (newWidth > 1.0)) {
            throw new IllegalArgumentException
                ("the width may not be smaller than 0 or greater then 1");
        }
        if ((newHeight < 0.0) || (newHeight > 1.0)) {
            throw new IllegalArgumentException
                ("the height may not be smaller than 0 or greater then 1");
        }

        x = newX;
        y = newY;
        height = newHeight;
        width = newWidth;

        return;
    }

    /**
     * Returns the X position.
     *
     * @return the X position.
     */
    public final synchronized double getX() {
        return x;
    }

    /**
     * Returns the Y position.
     *
     * @return the Y position.
     */
    public final synchronized double getY() {
        return y;
    }

    /**
     * Returns the width.
     *
     * @return the width.
     */
    public final synchronized double getWidth() {
        return width;
    }

    /**
     * Returns the height
     *
     * @return the height.
     */
    public final synchronized double getHeight() {
        return height;
    }

    /**
     * Sets the new X coordinate of the upper left corner.
     *
     * @param newX the new X coordinate
     */
    public final synchronized void setX(final double newX) {
        x = check(newX);
    }

    /**
     * Sets the new Y coordinate of the upper left corner.
     *
     * @param newY the new Y coordinate
     */
    public final synchronized void setY(final double newY) {
        y = check(newY);
    }

    /**
     * Sets the new width of the component.
     *
     * @param newWidth the width of the component
     */
    public final synchronized void setWidth(final double newWidth) {
        width = check(newWidth);
    }

    /**
     * Sets the new height of the component.
     *
     * @param newHeight the height of the component
     */
    public final synchronized void setHeight(final double newHeight) {
        height = check(newHeight);
    }

    /**
     * Creates and returns a 1:1 clone of this object.
     *
     * @see java.lang.Object#clone
     */
    public final Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    /**
     * Checks if a coordinate is within its bounds. If not, then an adjusted
     * value is returned.
     *
     * @param coord the coordinate to check
     *
     * @return an adjusted coordinate
     */
    private double check(double coord) {

        double adj = coord;

        if (coord < 0.0) {
            adj = 0.;
        }

        if (coord > 1.0) {
            adj = 1.0;
        }

        return adj;
    }

}
