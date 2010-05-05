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
 * Provides constants for different functions to colorize nodes.
 *
 * @author Roman Kennke
 */
public final class NodeColorFunction extends Enum {

    /** A red -> blue shading. */
    public static final NodeColorFunction RED_BLUE = new NodeColorFunction(1);

    /** A blue -> gray shading. */
    public static final NodeColorFunction BLUE_GRAY = new NodeColorFunction(2);

    /** A yellow -> blue shading. */
    public static final NodeColorFunction YELLOW_BLUE =
        new NodeColorFunction(3);

    /** Manual node colorization. */
    public static final NodeColorFunction MANUAL = new NodeColorFunction(4);


    /**
     * Creates a new instance.
     *
     * @param nID the ID for the constant value
     */
    private NodeColorFunction(final int nID) {
        super(nID);
    }

}
