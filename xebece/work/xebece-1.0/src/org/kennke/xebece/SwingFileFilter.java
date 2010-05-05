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

import java.io.File;

/**
 * A file filter implementation.
 *
 * @author Roman Kennke
 */
public class SwingFileFilter extends javax.swing.filechooser.FileFilter {

    /** The file filter spec. */
    private FileFilter filter;

    /**
     * Creates a new instance.
     *
     * @param newFilter the initial file filter spec.
     */
    public SwingFileFilter(final FileFilter newFilter) {

        filter = newFilter;
        return;
    }

    /**
     * Whether the given file is accepted by this filter.
     *
     * @param f the file to be checked.
     *
     * @return whether the given file is accepted by this filter.
     */
    public final boolean accept(final File f) {

        if (f.isDirectory()) {
            return true;
        }

        String fileName = f.getName();
        boolean accept = false;
        String[] exts = filter.getExtensions();
        for (int index = 0; index < exts.length; index++) {
            if (fileName.matches(".*\\." + exts[index] + "$")) {
                accept = true;
            }
        }
        return accept;
    }

    /**
     * Returns the description for this file filter.
     *
     * @return the description for this file filter.
     */
    public final String getDescription() {
        return filter.getDescription();
    }
}
