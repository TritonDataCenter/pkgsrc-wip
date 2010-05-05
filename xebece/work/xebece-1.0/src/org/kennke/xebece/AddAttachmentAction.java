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

import java.util.List;

/**
 * Executes the addition of an attachment.
 */
public class AddAttachmentAction extends AbstractAction {


    /**
     * Executes this action.
     */
    public final void run() {
        addAttachment();
        return;
    }


    /**
     * Request the user to select a new attachment and add this to the
     * currently selected node.
     */
    public final void addAttachment() {

        MessageFactory mf = MessageFactory.newInstance();
        GUI gui = getView();
        Context ctx = getModel();
        ctx.setSticky(true);
        File file = gui.showFileDialog(mf.getMessage("elEditOpenAttachment"),
                                       new FileFilters(),
                                       GUI.OPEN_FILE);
        List attachments = ctx.getSelectedNode().getAttachments();
        if (!attachments.contains(file.getName())) {
            // copy attachment file into temporary dir
            Settings settings = getModel().getSettings();
            File tempDir = settings.getTempDir();
            File copy = new File(tempDir, file.getName());
            try {
                Utils.copyFile(file, copy);
            } catch (IOException ex) {
                throw new RuntimeException(ex);
            }
            // register it as attachment
            ctx.getDocument().addAttachmentFile(copy);
            ctx.getSelectedNode().addAttachment(file.getName());


            Context model = getModel();
            model.setSelectedNode(model.getSelectedNode());
        }
        ctx.setSticky(true);
        return;
    }



}
