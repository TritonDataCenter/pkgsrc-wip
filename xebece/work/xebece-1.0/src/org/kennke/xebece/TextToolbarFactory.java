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

import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GraphicsEnvironment;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JToolBar;

import javax.swing.text.StyleConstants;
import javax.swing.text.rtf.RTFEditorKit;

public class TextToolbarFactory {

    private static final String iconSize = "24x24";

    private static JDialog toolbarFrame = null;

    public static JDialog createToolbar(GUI _view) {
        
        IconFactory icf = IconFactory.newInstance();
        if (toolbarFrame == null) {
            toolbarFrame = _view.createDialog();
            Container content = toolbarFrame.getContentPane();
            content.setLayout(new FlowLayout());

            JToolBar toolbar = new JToolBar();
            toolbar.setRollover(true);

            JButton alBoldButton = new JButton();
            alBoldButton.setAction(new RTFEditorKit.BoldAction());
            alBoldButton.setIcon(icf.getSwingIcon("text.bold", iconSize));
            alBoldButton.setText(null);
            toolbar.add(alBoldButton);

            JButton alItalicButton = new JButton();
            alItalicButton.setAction(new RTFEditorKit.ItalicAction());
            alItalicButton.setIcon(icf.getSwingIcon("text.italic", iconSize));
            alItalicButton.setText(null);
            toolbar.add(alItalicButton);

            JButton alUnderlineButton = new JButton();
            alUnderlineButton.setAction(new RTFEditorKit.UnderlineAction());
            alUnderlineButton.setIcon(icf.getSwingIcon("text.underline",
                                                       iconSize));
            alUnderlineButton.setText(null);
            toolbar.add(alUnderlineButton);

            toolbar.addSeparator();

            JButton alLeftButton = new JButton();
            alLeftButton.setAction(new RTFEditorKit.AlignmentAction
                                   (null, StyleConstants.ALIGN_LEFT));
            alLeftButton.setIcon(icf.getSwingIcon("text.left", iconSize));
            toolbar.add(alLeftButton);

            JButton alRightButton = new JButton();
            alRightButton.setAction(new RTFEditorKit.AlignmentAction
                                    (null, StyleConstants.ALIGN_RIGHT));
            alRightButton.setIcon(icf.getSwingIcon("text.right", iconSize));
            toolbar.add(alRightButton);

            JButton alCenterButton = new JButton();
            alCenterButton.setAction(new RTFEditorKit.AlignmentAction
                                     (null, StyleConstants.ALIGN_CENTER));
            alCenterButton.setIcon(icf.getSwingIcon("text.center", iconSize));
            toolbar.add(alCenterButton);

            JButton alJustButton = new JButton();
            alJustButton.setAction(new RTFEditorKit.AlignmentAction
                                   (null, StyleConstants.ALIGN_JUSTIFIED));
            alJustButton.setIcon(icf.getSwingIcon("text.justify", iconSize));
            toolbar.add(alJustButton);
            
            toolbar.addSeparator();

            // fetch font list
            GraphicsEnvironment env =
                GraphicsEnvironment.getLocalGraphicsEnvironment();
            String[] fonts = env.getAvailableFontFamilyNames();

            JMenuBar menuBar = new JMenuBar();

            MessageFactory mf = MessageFactory.newInstance();
            JMenu fontsMenu = new JMenu(mf.getMessage("fonts"));
            JMenu realFontsMenu = fontsMenu;
            for (int i = 0; i < fonts.length; i++) {
                if ((i > 0) && ((i % 15) == 0)) {
                    // wrap into submenu
                    JMenu subMenu = new JMenu(mf.getMessage("fonts.more"));
                    fontsMenu.insert(subMenu, 0);
                    fontsMenu = subMenu;
                }
                fontsMenu.add(new RTFEditorKit.FontFamilyAction
                              (fonts[i], fonts[i]));
            }
            menuBar.add(realFontsMenu);


            JMenu fontSizeMenu = new JMenu(mf.getMessage("fonts.size"));
            int[] sizes = {8, 9, 10, 11, 12, 14, 16, 18, 20, 22, 24, 26, 28,
                           36, 48, 72};
            for (int i = 0; i < sizes.length; i++) {
            
                fontSizeMenu.add(new RTFEditorKit.FontSizeAction
                                 (String.valueOf(sizes[i]), sizes[i]));
            }
            menuBar.add(fontSizeMenu);

            content.add(toolbar);
            content.add(menuBar);
            
            toolbarFrame.pack();
        }
        return toolbarFrame;
    }

}
