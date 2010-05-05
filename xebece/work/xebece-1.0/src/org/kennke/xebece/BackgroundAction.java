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

/**
 * Prompts for and changes the background image.
 *
 * @author Roman Kennke
 */
public class BackgroundAction extends AbstractAction {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /**
     * Executes this action.
     */
    public final void run() {
        editBackground();
        return;
    }


    /**
     * Lets the user choose a background image file.
     */
    public final void editBackground() {

        ImageSettingsController imageSettingsController =
            new ImageSettingsController(getView(), getModel());
        imageSettingsController.setImageSettings
            (getModel().getDocument().getBackgroundImageSettings());
        int approveOption = imageSettingsController.showImageSettingsDialog();
        if (approveOption == ImageSettingsController.OK) {
            ImageSettings settings =
                    imageSettingsController.getImageSettings();
            
            ImageSettings newSettings = new ImageSettings();
            File imageFile = settings.getImageFile();
            if (imageFile != null) {
                File copyFile = new File(getModel().getSettings().getTempDir(),
                        imageFile.getName());
                getModel().getDocument().addAttachmentFile(copyFile);
                
                try {
                    Utils.copyFile(imageFile, copyFile);
                } catch (IOException ex) {
                    log.throwing("org.kennke.xebece.BackgroundAction",
                                 "editBackground", ex);
                }
                newSettings.setImageFile(copyFile);
                newSettings.setRenderType(settings.getRenderType());
            }
            getModel().getDocument().setBackgroundImageSettings(newSettings);
            log.fine("new image settings set");
            
            getModel().setSticky(true);
        }
        return;
    }


}
