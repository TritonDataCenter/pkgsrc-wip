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
 * The event holding the change to the list of last opened files.
 *
 * @author Roman Kennke
 */
public class LastOpenedFilesEvent {

    /** The last opened files. */
    private File[] lastOpenedFiles;

    /**
     * Creates a new instance of LastOpenedFilesEvent.
     *
     * @param _lastOpenedFiles the list of last opened files
     */
    public LastOpenedFilesEvent(File[] _lastOpenedFiles) {
        lastOpenedFiles = _lastOpenedFiles;
    }

    /**
     * Returns the list of last opened files.
     *
     * @return the list of last opened files
     */
    public File[] getLastOpenedFiles() {
        return lastOpenedFiles;
    }
}
