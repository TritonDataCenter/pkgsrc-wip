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
 * Some constants for Graph layouts.
 *
 * @author Roman Kennke
 */
public final class GraphLayout extends Enum {

    /** Indicatas the Balloon Tree Layout. */
    public static final GraphLayout BALLOON_TREE_LAYOUT = new GraphLayout(1);

    /** Indicates the Indented Tree Layout. */
    public static final GraphLayout INDENTED_TREE_LAYOUT = new GraphLayout(2);

    /** Indicates the Radial Tree Layout. */
    public static final GraphLayout RADIAL_TREE_LAYOUT = new GraphLayout(3);

    /** Indicates the Force Directed Layout. */
    public static final GraphLayout FORCE_DIRECTED_LAYOUT = new GraphLayout(4);


    /** Indicates the Random Layout. */
    public static final GraphLayout RANDOM_LAYOUT = new GraphLayout(5);

    /** Indicates the Vertical Tree Layout. */
    public static final GraphLayout VERTICAL_TREE_LAYOUT = new GraphLayout(6);

    /** Indicates the Squarified Tree Map Layout. */
    public static final GraphLayout SQUARIFIED_TREE_MAP_LAYOUT =
        new GraphLayout(7);

    /** Indicates the Top Down Tree Layout. */
    public static final GraphLayout TOP_DOWN_TREE_LAYOUT = new GraphLayout(8);

    /**
     * Creates a new instance.
     *
     * @param id the ID of the constant
     */
    private GraphLayout(final int id) {
        super(id);
    }
}
