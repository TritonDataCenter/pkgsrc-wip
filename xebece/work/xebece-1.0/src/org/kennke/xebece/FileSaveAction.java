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

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

import java.util.logging.Logger;

import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.swing.JOptionPane;

/**
 * Performs file save actions.

 * This understands several commands: <code>file.save</code> saves the current
 * file, prompting for a name if necessary, <code>file.saveAs</code> always
 * prompts for a name, <code>file.autosave</code> saves the autosave file.
 *
 * @author Roman Kennke
 */
public class FileSaveAction extends AbstractAction {

    /** The length of file name extensions. */
    private static final int FILENAME_EXTENSION_LENGTH = 4;

    /** The size of IO buffers in bytes. */
    private static final int BUFFERSIZE = 1000;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /**
     * Executes this action.
     */
    public final void run() {


        String cmd = getActionCommand();
        if (cmd.equals("file.save")) {
            fileSave();
        } else if (cmd.equals("file.saveAs")) {
            fileSaveAs();
        } else if (cmd.equals("file.autosave")) {
            fileAutosave();
        }

        return;
    }

    /**
     * Opens a file-save dialog, lets the user choose a filename to save to,
     * and saves the current file.
     */
    public final void fileSaveAs() {

        try {


            Context ctx = getModel();

            GUI gui = getView();
            MessageFactory mf = MessageFactory.newInstance();
            FileFilters filters = new FileFilters();
            filters.add(new String[]{"cal"}, "Xebece Trees");
            File file = gui.showFileDialog(mf.getMessage("saveDialogTitle"),
                                           filters, GUI.SAVE_FILE);

            if (file != null) {

                String fileName = file.getName();
                if ((fileName.length() < FILENAME_EXTENSION_LENGTH)
                    || !fileName.substring(
                               fileName.length() - FILENAME_EXTENSION_LENGTH)
                    .equals(".cal")) {

                    file = new File(file.getPath() + ".cal");

                }
                if (file.exists()) {
                    int confirm = JOptionPane.showConfirmDialog
                        (gui.getMainFrame(),
                         mf.getMessage("dialog.confirm_overwrite.message"),
                         mf.getMessage("dialog.confirm_overwrite.title"),
                         JOptionPane.YES_NO_OPTION);
                    if (confirm == JOptionPane.NO_OPTION) {
                        return;
                    }
                }
                ctx.setCurrentFile(file);

                save(file);
                ctx.setSticky(false);
                gui.setStatus(mf.getMessage("fileSaved")
                               + ": " + file.getAbsolutePath());
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Saves the current file under its last filename. If none has been chosen
     * yet, the open a file-save dialog to let the user choose one.
     */
    public final void fileSave() {
        try {

            Context ctx = getModel();
            if (ctx.getCurrentFile() == null) {
                fileSaveAs();
            } else {
                save(ctx.getCurrentFile());
                ctx.setSticky(false);
                MessageFactory mf = MessageFactory.newInstance();
                GUI gui = getView();
                gui.setStatus(mf.getMessage("fileSaved")
                              + ": " + ctx.getCurrentFile()
                              .getAbsolutePath());
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    /**
     * Saves the current file under its last filename. If none has been chosen
     * yet, the open a file-save dialog to let the user choose one.
     */
    public final void fileAutosave() {

        Context ctx = getModel();

        Settings settings = ctx.getSettings();
        File autosaveFile = settings.getAutosaveFile();

        save(autosaveFile);

        MessageFactory mf = MessageFactory.newInstance();
        GUI gui = getView();

        gui.setStatus(mf.getMessage("fileSaved")
                      + ": " + autosaveFile.getAbsolutePath());
    }



    /**
     * Saves the current date into the file <code>file</code>.
     * @param file the file to save to.
     */
    public final void save(final File file) {
        try {

            Context ctx = getModel();
            XebeceDocumentSerializer dataser =
                new XebeceDocumentSerializer();

            // pack all files together
            FileOutputStream out = new FileOutputStream(file, false);
            BufferedOutputStream bufOut = new BufferedOutputStream(out);
            ZipOutputStream zipOut = new ZipOutputStream(bufOut);

            // zip tree file
            ZipEntry entry = new ZipEntry("tree.xml");
            zipOut.putNextEntry(entry);
            Map mapping = dataser.serializeGraph(ctx.getDocument().getTree(),
                                                 zipOut);

            // zip ontodata file
            ZipEntry ontoDataEntry = new ZipEntry("ontodata.xml");
            zipOut.putNextEntry(ontoDataEntry);
            dataser.serializeOntoData(getModel().getDocument(),
                                      zipOut, mapping);
            log.fine("written ontodata.xml");

            // pack attachment files
            Collection attachments = ctx.getDocument().getAttachmentFiles();
            Iterator attachIter = attachments.iterator();
            byte[] buffer = new byte[BUFFERSIZE];
            while (attachIter.hasNext()) {
                File attach = (File) attachIter.next();
                zipOut.putNextEntry(new ZipEntry(attach.getName()));
                FileInputStream attachIn = new FileInputStream(attach);
                BufferedInputStream attachBuf =
                    new BufferedInputStream(attachIn);
                int bytes = -1;
                do {
                    bytes = attachBuf.read(buffer);
                    if (bytes > 0) {
                        zipOut.write(buffer, 0, bytes);
                    }
                } while (bytes != -1);

                attachBuf.close();
                attachIn.close();

                zipOut.closeEntry();
            }

            zipOut.close();
            bufOut.close();
            out.close();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }

    }


}
