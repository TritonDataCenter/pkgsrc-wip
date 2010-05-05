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

import java.awt.Cursor;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;

import java.util.logging.Logger;

import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import javax.swing.JOptionPane;

/**
 * Executes the opening of a file.
 *
 * This actions understands several action commands:
 * <ul>
 *  <li><code>file.open</code> prompts for and opens a file</li>
 *  <li><code>file.open_param</code> opens the file specified in the parameter
 *    </li>
 * </ul>
 */
public class FileOpenAction extends AbstractAction {

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");

    /** The size of IO buffers in bytes. */
    private static final int BUFFERSIZE = 1000;


    /**
     * Executes the opening of a file.
     */
    public final void run() {
        String cmd = getActionCommand();
        if (cmd.equals("file.open")) {
            fileOpen();
        } else if (cmd.equals("file.open_param")) {
            String param = getParameter();
            File file = new File(param);
            openFile(file);
        }
        return;
    }

    /** Shows an file-open dialog, let the user choose a file and opens it.
     * This is the action associated with the File->Open menu entry.
     */
    public final void fileOpen() {

        GUI gui = getView();
        MessageFactory mf = MessageFactory.newInstance();
        FileFilters filters = new FileFilters();
        filters.add(new String[]{"cal"}, "Xebece Trees");

        File file = gui.showFileDialog(mf.getMessage("openDialogTitle"),
                                       filters, GUI.OPEN_FILE);

        if (file != null) {
            openFile(file);
        }

        return;
    }

    /** Opens a given file.
     * @param file the file to be opened.
     */
    public final void openFile(final File file) {
        Thread thread = new Thread(new Runnable() {
                public void run() {
                    try {

                        log.info("opening file: " + file.getName());

                        MessageFactory mf = MessageFactory.newInstance();

                        // store old document if sticky
                        if (getModel().isSticky()) {
                            int confirm = JOptionPane.showConfirmDialog
                                (getView().getMainFrame(),
                                 mf.getMessage("dialog.confirm_save_old.message"),
                                 mf.getMessage("dialog.confirm_save_old.title"),
                                 JOptionPane.YES_NO_OPTION);
                            if (confirm == JOptionPane.YES_OPTION) {
                                getController().triggerAction("file.save");
                            }
                        }

                        getView().getMainFrame().setCursor
                            (new Cursor(Cursor.WAIT_CURSOR));
                        
                        //getView().getImageDisplay().setBlanked(true);

                        Settings settings = getModel().getSettings();
                        File tempDir = settings.getTempDir();

                        // clear attachment file list
                        Context ctx = getModel();
                        ctx.getDocument().clearAttachmentFiles();

                        // exctract temporary files
                        Collection attachFiles = new ArrayList();
                        ZipFile zipFile = new ZipFile(file);
                        Enumeration entries = zipFile.entries();
                        byte[] buffer = new byte[BUFFERSIZE];
                        while (entries.hasMoreElements()) {

                            ZipEntry entry = (ZipEntry) entries.nextElement();
                            if (!entry.getName().equals("tree.xml")
                                && !entry.getName().equals("ontodata.xml")) {
                                File attachFile = new File(tempDir, entry.getName());
                                attachFiles.add(attachFile);
                                log.fine("registered attachment file: "
                                          + attachFile.getName());
                            } else {
                                File attachFile = new File(tempDir,
                                                              entry.getName());
                                log.fine("not registered file: "
                                         + attachFile.getName());
                            }
                            
                            File outFile = new File(tempDir, entry.getName());
                            FileOutputStream out = new FileOutputStream(outFile);
                            BufferedOutputStream bufOut = new BufferedOutputStream(out);

                            InputStream entryIn = zipFile.getInputStream(entry);
                            BufferedInputStream bufIn = new BufferedInputStream(entryIn);

                            int bytes = -1;
                            do {
                                bytes = bufIn.read(buffer);
                                if (bytes > 0) {
                                    bufOut.write(buffer, 0, bytes);
                                }
                            } while (bytes != -1);

                            bufIn.close();
                            entryIn.close();
                            bufOut.close();
                            out.close();
                            
                        }
                        
                        zipFile.close();

                        // parse XML tree data
                        File treeFile = new File(tempDir, "tree.xml");

                        // parse Ontographics XML document
                        File ontoDataFile = new File(tempDir, "ontodata.xml");

                        XebeceDocumentParser parser =
                            new XebeceDocumentParser(getModel());
                        XebeceDocument calDoc = parser.parseXebeceDocument
                            (treeFile, ontoDataFile);
                        for (Iterator i = attachFiles.iterator();
                             i.hasNext();) {
                            File attachFile = (File) i.next();
                            calDoc.addAttachmentFile(attachFile);
                        }
                        getModel().setDocument(calDoc);
                        log.fine("parsed  xebeche data file");
                        
                        ctx.setCurrentFile(file);
                        
                        
                        GUI gui = getView();
                        gui.setStatus(mf.getMessage("fileOpened")
                                      + ": " + file.getAbsolutePath());
                        
                        getView().getMainFrame().setCursor
                            (Cursor.getDefaultCursor());
                        //getView().getImageDisplay().setBlanked(false);

			//getView().getViewConfiguration().refresh();

                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }
            });

        thread.start();


    } // end openFile


}
