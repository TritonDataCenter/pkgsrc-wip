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

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Aggregates multiple {@link FileFilter}s.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class FileFilters {

    /** The filters. */
    private List filters;

    /**
     * Creates a new instance.
     */
    public FileFilters() {
        filters = new ArrayList();
        return;
    }

    /**
     * Creates a new instance and fills it with an initial {@link FileFilter}.
     *
     * @param exts the filename extensions for the initial filter.
     * @param description the description for the initial filter.
     */
    public FileFilters(final String[] exts, final String description) {
        this();
        add(exts, description);
        return;
    }

    /**
     * Adds a filter.
     *
     * @param exts the filename extensions for the new filter.
     * @param description the description for the new filter.
     */
    public final void add(final String[] exts, final String description) {
        filters.add(new FileFilter(exts, description));
        return;
    }

    /**
     * Returns an iterator over the filters.
     *
     * @return an iterator over the filters.
     */
    public final Iterator iterator() {
        return filters.iterator();
    }


    /**
     * Returns an array of the filters.
     *
     * @return an array of the filters.
     */
    public final FileFilter[] getFilters() {
        return (FileFilter[]) filters.toArray(new FileFilter[]{});
    }
}
