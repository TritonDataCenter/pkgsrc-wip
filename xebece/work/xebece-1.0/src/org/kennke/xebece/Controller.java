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

import java.awt.event.ActionListener;
import java.io.File;
import java.net.URL;
import javax.swing.JComponent;

/**
 *
 * @author roman
 */
public interface Controller extends ActionListener {
    

    /**
     * Performs an {@link Action} with the specified action command.
     *
     * @param cmd the action command.
     */
    void triggerAction(final String cmd);

    /** Starts the Actions without initially loading a file. */
    void start();


    /** Starts the controller and initially loads the file <code>file</code>.
     * @param file the file to load.
     */
    void start(final File file);


    /**
     * Starts the controller and initially loads the file <code>file</code>.
     *
     * @param baseUrl the URL from which to load the presentation
     *
     * @return a Swing component to use in presentations (i.e. Applets)
     */
    JComponent startPresentation(final URL baseUrl);

    /** Prints an error message to a given exception.
     * @param ex the exception to be printed.
     * @param ex
     */
    void printError(final Throwable ex);

    /**
     * Shuts down the application. Subcomponents are also notified by this
     * call.
     */
    void shutdown();
    
    Context getModel();

    GUI createGUI();
   
}
