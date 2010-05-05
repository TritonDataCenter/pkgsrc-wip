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
 * Holds filters for filenames.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class FileFilter {

    /** The filename extensions allowed by this filter. */
    private String[] exts;

    /** The description of this filter. */
    private String description;

    /**
     * Creates a new instance.
     *
     * @param newExts the filename extensions allowed by this filter.
     * @param newDescription the description of this filter.
     */
    public FileFilter(final String[] newExts, final String newDescription) {
        exts = newExts;
        description = newDescription;
        return;
    }

    /**
     * Returns the filename extensions allowed by this filter.
     *
     * @return the filename extensions allowed by this filter.
     */
    public final String[] getExtensions() {
        return exts;
    }

    /**
     * Returns the description of this filter.
     *
     * @return the description of this filter.
     */
    public final String getDescription() {
        return description;
    }
}
