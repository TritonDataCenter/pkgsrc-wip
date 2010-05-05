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

import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;

import java.util.Locale;

import javax.swing.KeyStroke;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JRadioButtonMenuItem;

/**
 * Assists in creating menus by supplying their labels, Mnemonics, Accelerators
 * and icons.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class MenuHelper {

    private static MenuHelper instance = null;

    private MenuHelper() {
    }

    public static MenuHelper newInstance() {
        if (instance == null) {
            instance = new MenuHelper();
        }
        return instance;
    }


    public JMenuItem createMenuItem(String id) {

        IconFactory icf = IconFactory.newInstance();
        JMenuItem menuItem = new JMenuItem(getText(id));
        menuItem.setAccelerator(getAccelerator(id));
        menuItem.setMnemonic(getMnemonic(id));
        menuItem.setIcon(icf.getSwingIcon(id, "16x16"));
        menuItem.setActionCommand(id);
        return menuItem;
    }

    public JRadioButtonMenuItem createRadioButtonMenuItem(String id) {

        JRadioButtonMenuItem menuItem = new JRadioButtonMenuItem(getText(id));
        menuItem.setAccelerator(getAccelerator(id));
        menuItem.setMnemonic(getMnemonic(id));
        //menuItem.setIcon(icf.getSwingIcon(id, "16x16"));
        menuItem.setActionCommand(id);
        return menuItem;
    }

    public JCheckBoxMenuItem createCheckBoxMenuItem(String id) {

        JCheckBoxMenuItem menuItem = new JCheckBoxMenuItem(getText(id));
        menuItem.setAccelerator(getAccelerator(id));
        menuItem.setMnemonic(getMnemonic(id));
        //menuItem.setIcon(icf.getSwingIcon(id, "16x16"));
        menuItem.setActionCommand(id);
        return menuItem;
    }

    public JMenu createMenu(String id) {

        JMenu menu = new JMenu(getText(id));
        menu.setMnemonic(getMnemonic(id));
        return menu;
    }


    /**
     * Returns the (internationalized) menu text for the specified menu item.
     *
     * @param item the menu item.
     * @return the (internationalized) menu text for the specified menu item.
     */
    private final String getText(final String item) {

        MessageFactory mf = MessageFactory.newInstance();
        String text = null;

        text = mf.getMessage("menu." + item);
        return text;
    }

    /**
     * Returns the (internationalized) mnemonic for the specified menu item.
     *
     * @param item the menu item.
     * @return  the (internationalized) mnemonic for the specified menu item.
     */
    private final int getMnemonic(final String item) {

        int mnemonic = KeyEvent.VK_UNDEFINED;

        if (item.equals("file")) {
            mnemonic = KeyEvent.VK_F;
        } else if (item.equals("file.new")) {
            mnemonic = KeyEvent.VK_N;
        } else if (item.equals("file.open")) {
            mnemonic = KeyEvent.VK_O;
        } else if (item.equals("file.save")) {
            mnemonic = KeyEvent.VK_S;
        } else if (item.equals("edit")) {
            mnemonic = KeyEvent.VK_E;
        } else if (item.equals("edit.cut")) {
            mnemonic = KeyEvent.VK_T;
        } else if (item.equals("edit.copy")) {
            mnemonic = KeyEvent.VK_C;
        } else if (item.equals("edit.paste")) {
            mnemonic = KeyEvent.VK_P;
        } else if (item.equals("edit.find")) {
            mnemonic = KeyEvent.VK_F;
        } else if (item.equals("view")) {
            mnemonic = KeyEvent.VK_V;
        } else if (item.equals("help")) {
            mnemonic = KeyEvent.VK_H;
        } else {
            mnemonic = KeyEvent.VK_UNDEFINED;
        }


        // locale specific overrides
        Locale locale = Locale.getDefault();
        if (locale.getLanguage().equals("de")) {

            if (item.equals("file")) {
                mnemonic = KeyEvent.VK_D;
            } else if (item.equals("file.open")) {
                mnemonic = KeyEvent.VK_F;
            } else if (item.equals("edit")) {
                mnemonic = KeyEvent.VK_B;
            } else if (item.equals("edit.cut")) {
                mnemonic = KeyEvent.VK_A;
            } else if (item.equals("edit.copy")) {
                mnemonic = KeyEvent.VK_C;
            } else if (item.equals("edit.paste")) {
                mnemonic = KeyEvent.VK_N;
            } else if (item.equals("view")) {
                mnemonic = KeyEvent.VK_A;
            }

        }

        return mnemonic;
    }

    /**
     * Returns the (internationalized) accelerator for the specified menu item.
     *
     * @param item the menu item.
     * @return the (internationalized) accelerator for the specified menu item.
     */
    private final KeyStroke getAccelerator(final String item) {

        KeyStroke keyStroke = null;

        if (item.equals("file.new")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_N,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("file.open")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_O,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("file.save")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("file.saveAs")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S,
                                               InputEvent.CTRL_MASK
                                               | InputEvent.SHIFT_MASK);
        } else if (item.equals("file.print")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_P,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("file.exit")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_Q,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("edit.undo")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_Z,
                                               InputEvent.CTRL_MASK
                                               | InputEvent.SHIFT_MASK);
        } else if (item.equals("edit.redo")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_Y,
                                               InputEvent.CTRL_MASK
                                               | InputEvent.SHIFT_MASK);
        } else if (item.equals("edit.cut")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_X,
                                               InputEvent.CTRL_MASK
                                               | InputEvent.SHIFT_MASK);
        } else if (item.equals("edit.copy")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_C,
                                               InputEvent.CTRL_MASK
                                               | InputEvent.SHIFT_MASK);
        } else if (item.equals("edit.paste")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_V,
                                               InputEvent.CTRL_MASK
                                               | InputEvent.SHIFT_MASK);
        } else if (item.equals("edit.del")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_DELETE,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("edit.find")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_F,
                                               InputEvent.CTRL_MASK);
        } else if (item.equals("view.fullScreen")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_F5, 0);


        } else if (item.equals("navigation.up")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_UP,
                                               InputEvent.CTRL_MASK);

        } else if (item.equals("navigation.down")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_DOWN,
                                               InputEvent.CTRL_MASK);

        } else if (item.equals("navigation.left")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_LEFT,
                                               InputEvent.CTRL_MASK);

        } else if (item.equals("navigation.right")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_RIGHT,
                                               InputEvent.CTRL_MASK);

        } else if (item.equals("navigation.root")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_ENTER,
                                               InputEvent.CTRL_MASK);

        } else if (item.equals("help.contents")) {
            keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_F1, 0);
        }


        return keyStroke;
    }
}
