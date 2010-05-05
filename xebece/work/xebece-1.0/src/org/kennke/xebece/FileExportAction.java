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

import java.awt.Graphics;
import java.awt.image.BufferedImage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;


public class FileExportAction extends AbstractAction {

    /** Exports the current graphic as a PNG file. Opens a dialog to let the
     * user choose a file name for it.
     */
    public void run() {

        MessageFactory mf = MessageFactory.newInstance();
        GUI gui = getView();
        FileFilters filters = new FileFilters(
                                          new String[]{"png"}, "PNG images");
        File pngFile = gui.showFileDialog(mf.getMessage("exportPNGTitle"),
                                          filters, GUI.SAVE_FILE);

        if (pngFile != null) {

            String filename = pngFile.getAbsolutePath();
            if (!filename.matches(".*\\.png$")
                && !filename.matches(".*\\.PNG$")) {
                pngFile = new File(filename + ".png");
            }
            exportPNGToFile(pngFile);
        }
        return;
    }

    /** Exports the current graphic to a PNG file.
     * @param file the file to save the PNG graphics into.
     */
    public void exportPNGToFile(final File file) {
        try {

            GUI gui = getView();

            BufferedImage image = new BufferedImage(gui.getHTViewWidth(),
                                                    gui.getHTViewHeight(),
                                                   BufferedImage.TYPE_INT_RGB);
            Graphics g = image.createGraphics();
            gui.paintHTView(g);
            g.dispose();
            FileOutputStream out = new FileOutputStream(file);
            ImageIO.write(image, "png", out);
            out.close();
            return;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


}
