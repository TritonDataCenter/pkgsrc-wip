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

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import java.util.logging.Level;
import java.util.logging.Logger;

import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;

/**
 * Implements the model around the last opened files concept.
 *
 * @author Roman Kennke
 */
public class LastOpenedFilesModel {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The default size of newly created <code>LastOpenedFilesModel</code>s.
     */
    private static final int DEFAULT_SIZE = 4;

    /** The list of last opened files. */
    private File[] lastOpenedFiles;

    /** The number of files that we actually have. */
    private int numberOfFiles;

    /** The maximum numbers of files (capacity of the above list). */
    private int size;

    /** The LastOpenedFilesListeners. */
    private Set listeners;

    /**
     * Creates a new instance of <code>LastOpenedFilesModel</code> with a
     * default size.
     *
     * @see #LastOpenedFilesModel(int)
     */
    public LastOpenedFilesModel() {
        this(DEFAULT_SIZE);
    }

    /**
     * Creates a new instance of LastOpenedFilesModel. The maximum size of the
     * list is specified as a parameter.
     *
     * @param newSize the maximum size of the list
     */
    public LastOpenedFilesModel(final int newSize) {
        lastOpenedFiles = new File[newSize];
        for (int i = 0; i < newSize; i++) {
            lastOpenedFiles[i] = null;
        }
        numberOfFiles = 0;
        size = newSize;
        listeners = new HashSet();

        //load();
    }

    /**
     * Adds a file to the list of last selected files.
     * <p>This method first checks if file is null. In this case the request is
     * ignored.
     * Then it is checked, if the file is already in the list, in which case
     * the request is also ignored.</p>
     * If these checkes do not fail, then the file is added  to the end of the
     * list, if necessary the first items are thrown away.
     *
     * @param file the file to be added
     */
    public final void addFile(final File file) {

        log.finer("adding a file");
        if (file != null) {
            log.finer("filename: " + file.getName());
        } else {
            log.finer("file is null");
        }

        if (file == null) {
            return;
        }

        // check if file is already in array
        for (int i = 0; i < size; i++) {
            if (file.equals(lastOpenedFiles[i])) {
                // we already have this file
                log.finer("we already have this file");
                return;
            }
        }

        if (numberOfFiles < size) {
            lastOpenedFiles[numberOfFiles] = file;
            numberOfFiles++;
        } else {
            for (int i = 1; i < size; i++) {
                lastOpenedFiles[i - 1] = lastOpenedFiles[i];
            }
            lastOpenedFiles[numberOfFiles - 1] = file;
        }
        log.finer("# of last opened files: " + numberOfFiles);
        log.finer("# size: " + size);

        notifyLastOpenedFilesChange();
        save();
        return;
    }

    /**
     * Returns the last opened files. Non existent entries are
     * <code>null</code>.
     *
     * @return the last opened files
     */
    public final File[] getLastOpenedFiles() {
        return lastOpenedFiles;
    }

    /**
     * Adds a listener that is interested in notifications of changes to
     * the last opened files.
     *
     * @param l a listener to last opened files
     */
    public final void addLastOpenedFilesListener
        (final LastOpenedFilesListener l) {
        if (l != null) {
            listeners.add(l);
            notifyLastOpenedFilesChange();
        }
    }

    /**
     * Notifies all registered listeners.
     */
    private void notifyLastOpenedFilesChange() {

        log.finer("updating listeners");

        for (Iterator i = listeners.iterator(); i.hasNext();) {
            log.finest("sending update event to listener...");

            LastOpenedFilesListener l = (LastOpenedFilesListener) i.next();
            LastOpenedFilesEvent ev =
                new LastOpenedFilesEvent(lastOpenedFiles);
            l.lastOpenedFilesChanged(ev);
        }
    }

    /**
     * Loads the current list of last opened files from the settings
     * registry.
     */
    public final void load() {
        try {
            Preferences prefs = Preferences.userNodeForPackage(getClass());
            Preferences node = prefs.node("last_opened_files");

            String[] keys = node.keys();
            if (keys.length == 0) {
                return;
            }
            lastOpenedFiles = new File[keys.length];
            size = keys.length;
            numberOfFiles = 0;
            for (int i = 0; i < keys.length; i++) {
                String key = keys[i];
                String value = node.get(key, null);
                File file = null;
                if (value.equals("null")) {
                    file = null;
                } else {
                    file = new File(value);
                    lastOpenedFiles[i] = file;
                    numberOfFiles++;
                }

            }
            notifyLastOpenedFilesChange();
        } catch (BackingStoreException ex) {
            log.log(Level.SEVERE, "error while loading settings", ex);
        }
    }

    /**
     * Stores the current list of last opened files to the settings registry.
     */
    public final void save() {

        log.fine("saving last opened files");

        try {
            Preferences prefs = Preferences.userNodeForPackage(getClass());
            Preferences node = prefs.node("last_opened_files");

            node.clear();
            for (int i = 0; i < lastOpenedFiles.length; i++) {

                File file = lastOpenedFiles[i];
                String value = "null";
                if (file != null) {
                    value = file.getAbsolutePath();
                }
                log.finer("written setting: " + i + ": " + value);
                node.put(String.valueOf(i), value);
            }
            node.sync();
        } catch (BackingStoreException ex) {
            log.log(Level.SEVERE, "error while loading settings", ex);
        }

    }
}

