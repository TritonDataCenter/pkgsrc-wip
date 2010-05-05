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

import java.awt.Image;
import java.awt.Toolkit;

import java.awt.event.ActionListener;

import java.io.File;

import java.net.MalformedURLException;

import javax.swing.BorderFactory;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JRadioButton;
import javax.swing.JPanel;
import javax.swing.SpringLayout;

public class ImageSettingsDialog extends JPanel 
    implements ImageSettingsChangeListener {

    private ImageDisplayPane imagePreview;

    private JRadioButton fullButton;

    private JRadioButton preserveButton;

    private JButton chooseButton;
    private JButton noImageButton;

    private JButton okButton;

    private JButton cancelButton;

    private File file;

    private RenderType renderType;

    public ImageSettingsDialog() {


        MessageFactory mf = MessageFactory.newInstance();

        //setBorder(BorderFactory.createEmptyBorder(12, 12, 11, 11));

        SpringLayout layout = new SpringLayout();
        setLayout(layout);

        imagePreview = new ImageDisplayPane();
        imagePreview.setBorder(BorderFactory.createLoweredBevelBorder());
        add(imagePreview);

        fullButton = new JRadioButton(mf.getMessage("dialog.image.scaled"));
        fullButton.setActionCommand("scaledToFit");
        add(fullButton);

        preserveButton = new JRadioButton
            (mf.getMessage("dialog.image.preserve"));
        preserveButton.setActionCommand("preserveRelations");
        add(preserveButton);

        ButtonGroup buttonGroup = new ButtonGroup();
        buttonGroup.add(fullButton);
        buttonGroup.add(preserveButton);


        chooseButton = new JButton(mf.getMessage("dialog.image.button.choose"));
        chooseButton.setActionCommand("chooseImage");
        add(chooseButton);
        
        noImageButton = new JButton(
                mf.getMessage("dialog.image.button.no_image"));
        noImageButton.setActionCommand("noImage");
        add(noImageButton);
        
        okButton = new JButton(mf.getMessage("dialog.button.ok"));
        okButton.setActionCommand("ok");
        add(okButton);

        cancelButton = new JButton(mf.getMessage("dialog.button.cancel"));
        cancelButton.setActionCommand("cancel");
        add(cancelButton);

        layout.putConstraint(SpringLayout.NORTH, imagePreview, 12,
                             SpringLayout.NORTH, this);
        layout.putConstraint(SpringLayout.WEST, imagePreview, 12,
                             SpringLayout.WEST, this);

        layout.putConstraint(SpringLayout.NORTH, fullButton, 12,
                             SpringLayout.NORTH, this);

        layout.putConstraint(SpringLayout.WEST, fullButton, 11,
                             SpringLayout.EAST, imagePreview);
        layout.putConstraint(SpringLayout.WEST, preserveButton, 11,
                             SpringLayout.EAST, imagePreview);
        layout.putConstraint(SpringLayout.NORTH, preserveButton, 0,
                             SpringLayout.SOUTH, fullButton);

        layout.putConstraint(SpringLayout.WEST, okButton, 11,
                             SpringLayout.EAST, imagePreview);

        layout.putConstraint(SpringLayout.WEST, chooseButton, 0,
                             SpringLayout.WEST, imagePreview);
        layout.putConstraint(SpringLayout.NORTH, chooseButton, 11,
                             SpringLayout.SOUTH, imagePreview);

        layout.putConstraint(SpringLayout.WEST, noImageButton, 11,
                             SpringLayout.EAST, chooseButton);
        layout.putConstraint(SpringLayout.NORTH, noImageButton, 0,
                             SpringLayout.NORTH, chooseButton);
        
        
        layout.putConstraint(SpringLayout.NORTH, okButton, 17,
                             SpringLayout.SOUTH, chooseButton);
        layout.putConstraint(SpringLayout.NORTH, cancelButton, 17,
                             SpringLayout.SOUTH, chooseButton);

        layout.putConstraint(SpringLayout.WEST, cancelButton, 11,
                             SpringLayout.EAST, okButton);

        layout.putConstraint(SpringLayout.EAST, this, 11,
                             SpringLayout.EAST, cancelButton);
        layout.putConstraint(SpringLayout.SOUTH, this, 11,
                             SpringLayout.SOUTH, cancelButton);
//        layout.putConstraint(SpringLayout.SOUTH, this, 11,
//                             SpringLayout.SOUTH, okButton);

        return;
    }

    public void addActionListener(ActionListener l) {
        fullButton.addActionListener(l);
        preserveButton.addActionListener(l);
        chooseButton.addActionListener(l);
        noImageButton.addActionListener(l);
        okButton.addActionListener(l);
        cancelButton.addActionListener(l);
        return;
    }

    public void imageSettingsChanged(ImageSettingsChangeEvent ev) {

        ImageSettings imageSettings = ev.getImageSettings();
        setImageSettings(imageSettings);
        return;
    }

    public void setImageSettings(ImageSettings _imageSettings) {

        File imageFile = _imageSettings.getImageFile();
        if ((imageFile != null) && (!imageFile.equals(file))) {
            Toolkit tk = Toolkit.getDefaultToolkit();
            try {
                Image image = tk.getImage(imageFile.toURL());
                imagePreview.setImage(image);
            } catch (MalformedURLException ex) {
                
            }
            file = imageFile;
        } else if (imageFile == null) {
            imagePreview.setImage(null);
            file = null;
        }

        RenderType newRenderType = _imageSettings.getRenderType();
        if (newRenderType != renderType) {
            imagePreview.setRenderType(newRenderType);
            if (renderType == RenderType.SCALED_TO_FIT) {
                fullButton.setSelected(true);
            } else {
                preserveButton.setSelected(true);
            }
            renderType = newRenderType;
        }

        return;
        
    }
}
