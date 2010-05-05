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

/** The entry point in the application.
 *
 * @author Roman Kennke
 * @version $Id$
 */
public final class App {

    /** This class cannot be instatiated. */
    private App() { }

    /** The entry point in the application.
     * @param args command line arguments.
     */
    public static void main(final String[] args) {

        Actions ctrl = new Actions();

        if (args.length >= 1) {

            StringBuffer filename = new StringBuffer();
            for (int index = 0; index < args.length; index++) {
                filename.append(args[index]);
                if (index != args.length - 1) {
                    filename.append(" ");
                }
            }

            File file = new File(filename.toString());
            ctrl.start(file);
        } else {
            ctrl.start();
        }


        return;
    }

}
