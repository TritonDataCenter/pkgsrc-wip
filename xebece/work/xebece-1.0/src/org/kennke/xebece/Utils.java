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

import java.io.BufferedOutputStream;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.IOException;

public class Utils {

    /** The size of IO buffers in bytes. */
    private static final int BUFFERSIZE = 1000;



    /** Creates a copy of the <code>source</code> file.
     * @param source the source file.
     * @param dest the destination file.
     * @throws IOException if an IO error occurs.
     */
    public static void copyFile(final File source, final File dest)
        throws IOException {

        FileInputStream in = new FileInputStream(source);
        FileOutputStream out = new FileOutputStream(dest);

        BufferedInputStream input = new BufferedInputStream(in);
        BufferedOutputStream output = new BufferedOutputStream(out);

        byte[] buffer = new byte[BUFFERSIZE];
        int bytes = -1;
        do {
            bytes = input.read(buffer);
            if (bytes > 0) {
                output.write(buffer, 0, bytes);
            }

        } while (bytes != -1);

        output.close();
        input.close();
        out.close();
        in.close();

        return;
    }




}
