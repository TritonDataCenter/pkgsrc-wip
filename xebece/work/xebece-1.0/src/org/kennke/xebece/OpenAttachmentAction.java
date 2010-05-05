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

import java.util.logging.Logger;

public class OpenAttachmentAction extends AbstractAction {

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");


    public void run() {
        String param = getParameter();
        if (param != null) {
            
            openAttachment(param);
        }
        openAttachment(getModel().getSelectedAttachmentName());
        return;
    }


    /**
     * Opens an attachment in a seperate native process.
     *
     * @param filename the name of the attachment file to be opened.
     */
    public void openAttachment(final String filename) {
        try {

            if (filename != null) {

                String osName = System.getProperty("os.name");
                Settings settings = getModel().getSettings();
                File attachmentFile = new File(settings.getTempDir(), filename);
                String file = "\"" + attachmentFile.getAbsolutePath() + "\"";
                log.info("OS: " + osName);
                log.info("File: " + file);
                if (osName.equals("Linux")) {
                    String cmd = "/usr/bin/gnome-open";
                    String[] cmds = new String[]{
                                        cmd, attachmentFile.getAbsolutePath()};
                    Runtime.getRuntime().exec(cmds);
                    log.info("CMD: " + cmd + file);
                } else if (osName.equals("FreeBSD")) {
                    String cmd = "/usr/X11R6/bin/gnome-open";
                    String[] cmds = new String[]{
                                        cmd, attachmentFile.getAbsolutePath()};
                    Runtime.getRuntime().exec(cmds);
                    log.info("CMD: " + cmd + file);
                } else {

                    if (osName.equals("Windows XP")
                        || osName.equals("Windows 2000")
                        || osName.equals("Windows NT")) {

                        String cmd = "cmd.exe";
                        String[] cmds = new String[]{cmd, "start", "/C", file};
                        Runtime.getRuntime().exec(cmds);
                    }
                    if (osName.equals("Windows 95")
                        || osName.equals("Windows 98")
                        || osName.equals("Windows ME")) {

                        String cmd = "command.com";
                        String[] cmds = new String[]{cmd, "/C", "start", file};
                        Runtime.getRuntime().exec(cmds);

                    }
                }
            }

            return;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
