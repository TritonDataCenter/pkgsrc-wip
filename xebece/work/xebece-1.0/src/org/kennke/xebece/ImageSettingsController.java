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

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import java.io.File;

import java.util.logging.Logger;

import javax.swing.JDialog;
import javax.swing.JFileChooser;

public class ImageSettingsController
    implements ActionListener {

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");

    public static final int OK = 1;
    public static final int CANCEL = 2;
    
    private int approveOption;
    
    private ImageSettings imageSettings;

    private ImageSettingsDialog imageSettingsDialog;

    private JDialog dialog;

    private GUI view;

    private Context model;

    public ImageSettingsController(GUI _view, Context newModel) {

        view = _view;
        model = newModel;

        imageSettings = new ImageSettings();
        imageSettingsDialog = null;
        return;
    }


    public int showImageSettingsDialog() {

        dialog = view.createDialog();
        if (imageSettingsDialog == null) {
            imageSettingsDialog = new ImageSettingsDialog();
        }
        imageSettingsDialog.setImageSettings(imageSettings);
        imageSettings.addImageSettingsChangeListener(imageSettingsDialog);
        imageSettings.notifyChange();

        imageSettingsDialog.addActionListener(this);

        dialog.setContentPane(imageSettingsDialog);
        dialog.pack();
        dialog.setModal(true);
        dialog.setVisible(true);
        return approveOption;
    }

    public ImageSettings getImageSettings() {
        return imageSettings;
    }

    public void setImageSettings(ImageSettings _imageSettings) {
        imageSettings.setImageFile(_imageSettings.getImageFile());
        imageSettings.setRenderType(_imageSettings.getRenderType());
        return;
    }

    public void actionPerformed(ActionEvent ev) {

        String cmd = ev.getActionCommand();
        if (cmd.equals("chooseImage")) {
            chooseImage();
        } else if (cmd.equals("noImage")) {
            imageSettings.setImageFile(null);
        } else if (cmd.equals("scaledToFit")) {
            log.fine("scaled to fit");
            scaledToFit();
        } else if (cmd.equals("preserveRelations")) {
            log.fine("preserve relations");
            preserveRelations();
        } else if (cmd.equals("ok")) {
            ok();
        } else if (cmd.equals("cancel")) {
            cancel();
        }
    }

    private void chooseImage() {

        Settings settings = model.getSettings();

        JFileChooser chooser = new JFileChooser();
        File imageDir = settings.getImageDir();
        if (imageDir != null) {
            chooser.setCurrentDirectory(imageDir);
        }

        int returnVal = chooser.showOpenDialog(imageSettingsDialog);
        if(returnVal == JFileChooser.APPROVE_OPTION) {

            File file = chooser.getSelectedFile();
            imageSettings.setImageFile(file);

            settings.setImageDir(file.getParentFile());
        }
        return;
    }

    private void scaledToFit() {
        imageSettings.setRenderType(RenderType.SCALED_TO_FIT);
        return;
    }

    private void preserveRelations() {
        imageSettings.setRenderType(RenderType.PRESERVE_RELATIONS);
        return;
    }

    private void ok() {
        approveOption = OK;
        dialog.dispose();
        return;
    }

    private void cancel() {
        approveOption = CANCEL;
        dialog.dispose();
        return;
    }

}
