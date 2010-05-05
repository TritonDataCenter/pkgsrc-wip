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
import java.io.IOException;

import java.security.AccessControlException;

import java.util.logging.Logger;

import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;


/** Stores the settings of the application.
 * @author Roman Kennke
 * @version $Id$
 */
public final class Settings {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /** The temporary directory which is used by ontographics. */
    private File tempDir;

    /** The autosave file. */
    private File autosaveFile;

    /** The last opened files. */
    private LastOpenedFilesModel lastOpenedFiles;

    /** Creates a new instance. Please use the static method newInstance for
     * public access.
     */
    public Settings() {

        try {
            tempDir = new File(System.getProperty("user.home"),
                               ".ontographics-temp");

            autosaveFile = new File(System.getProperty("user.home"),
                                    ".ontographics-autosave.cal");
        } catch (AccessControlException ex) {
            tempDir = null;
            autosaveFile = null;
            //
        }

        if ((tempDir != null) && (!tempDir.exists())) {
            tempDir.mkdir();
        }

        lastOpenedFiles = new LastOpenedFilesModel();
        try {
            lastOpenedFiles.load();
        } catch (AccessControlException ex) {
            //
        }
        return;
    }

    /** Returns the temporary directory that should be used througout the
     * Ontographics application.
     * @return the temporary directory.
     */
    public File getTempDir() {

        return tempDir;
    }

    /**
     * Returns the autosave file.
     *
     * @return the autosave file
     */
    public File getAutosaveFile() {
        return autosaveFile;
    }

    /**
     * Returns the last opened files list.
     *
     * @return the last opened files list
     */
    public LastOpenedFilesModel getLastOpenedFiles() {
        return lastOpenedFiles;
    }

    /**
     * Notifies the applications shuts down.
     */
    public void shutdown() {
        try {
            Preferences prefs = Preferences.userNodeForPackage(getClass());
            prefs.sync();
        } catch (BackingStoreException ex) {
            log.throwing("org.kennke.xebece.Settings", "shutdown", ex);
        }
        return;
    }

    /**
     * Returns the current working directory.
     *
     * @return  the current working directory
     */
    public File getCurrentDir() {

        Preferences prefs = Preferences.userNodeForPackage(getClass());
        //String defaultDir = System.getProperty("user.dir");
        String dirStr = prefs.get("settings.currentDir", null);
	File dir = null;
	if (dirStr != null ) {
	    dir = new File(dirStr);
	}
        return dir;
    }

    /**
     * Sets the current working directory.
     *
     * @param dir the working directory to set
     */
    public void setCurrentDir(File dir) {
        try {
            String dirStr = dir.getCanonicalPath();
            Preferences prefs = Preferences.userNodeForPackage(getClass());
            prefs.put("settings.currentDir", dirStr);
            prefs.flush();
        } catch (BackingStoreException ex) {
            log.throwing("org.kennke.xebece.Settings", "setCurrentDir", ex);
        } catch (IOException ex) {
            log.throwing("org.kennke.xebece.Settings", "setCurrentDir", ex);
        }
    }


    /**
     * Returns the current image directory.
     *
     * @return  the current image directory
     */
    public File getImageDir() {

        Preferences prefs = Preferences.userNodeForPackage(getClass());
        String dirStr = prefs.get("settings.imageDir", null);
	File dir = null;
	if (dirStr != null ) {
	    dir = new File(dirStr);
	}
        return dir;
    }

    /**
     * Sets the current image directory.
     *
     * @param dir the image directory to set
     */
    public void setImageDir(File dir) {
        try {
            String dirStr = dir.getCanonicalPath();
            Preferences prefs = Preferences.userNodeForPackage(getClass());
            prefs.put("settings.imageDir", dirStr);
            prefs.flush();
        } catch (BackingStoreException ex) {
            log.throwing("org.kennke.xebece.Settings", "setImageDir", ex);
        } catch (IOException ex) {
            log.throwing("org.kennke.xebece.Settings", "setImageDir", ex);
        }
    }

}
