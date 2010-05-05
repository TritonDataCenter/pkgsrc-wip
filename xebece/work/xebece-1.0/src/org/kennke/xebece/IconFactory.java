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

import java.net.URL;

import java.util.Properties;

import java.util.logging.Logger;

import javax.swing.Icon;
import javax.swing.ImageIcon;

/** Creates icons by its name.
 * @author Roman Kennke
 * @version $Id$
 */
public final class IconFactory {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /** The only instance of this class. */
    private static IconFactory instance = null;

    /** The mappings from icon names to its filenames. */
    private Properties iconMappings;

    /** Creates a new IconFactory instance. This is only called internally.
     * Use the static method newInstance for public access.
     */
    private IconFactory() {
        checkIconMappings();
        return;
    }

    /** Returns an instance of IconFactory.
     * @return an instance of IconFactory.
     */
    public static IconFactory newInstance() {

        if (instance == null) {
            instance = new IconFactory();
        }

        return instance;
    }

    /**
     * Creates and returns an AWT compatible icon.
     *
     * @param id the id of the icon
     * @param size a size specification like "16x16"
     *
     * @return an AWT compatible icon
     */
    public Image getAWTIcon(final String id, final String size) {

        String iconName = iconMappings.getProperty(id, "");

        Toolkit tk = Toolkit.getDefaultToolkit();
        String iconFilename = "/icons/" + size + "/" + iconName;
        URL in = getClass().getResource(iconFilename);
        Image icon = null;
        if (in != null) {
            icon = tk.getImage(in);
        }
        return icon;
    }


    /**
     * Returns an icon as Swing Icon.
     * @param id the name of the icon.
     * @param size a size specification like "16x16"
     *
     * @return the icon, or <code>null</code> if such an icon does not exist.
     */
    public Icon getSwingIcon(final String id, final String size) {

        String iconName = iconMappings.getProperty(id);
        Icon icon = null;

        if (iconName == null) {
            log.fine("Icon: " + id + " is empty icon");
            String[] sizeSplit = size.split("x");
            int w = Integer.parseInt(sizeSplit[0]);
            int h = Integer.parseInt(sizeSplit[1]);
            log.fine("empty icon size: " + w + ", " + h);
            icon = new EmptyIcon(w, h);
        } else {
            Toolkit tk = Toolkit.getDefaultToolkit();
            String iconFilename = "/icons/" + size + "/" + iconName;
            log.fine("load icon: " + iconFilename);
            try {
                URL in = getClass().getResource(iconFilename);
                Image iconImage = tk.getImage(in);
                log.fine("icon image size: ");

                icon = new ImageIcon(iconImage);
            } catch (NullPointerException ex) {
                icon = new EmptyIcon(1, 1);
            }
        }
        return icon;
    }

    /**
     * Checks and - if necessary - reads in the icon mappings from the file
     * icons.properties.
     */
    private void checkIconMappings() {


        if (iconMappings == null) {
            iconMappings = new Properties();
            try {
                iconMappings.load(getClass().getResourceAsStream
                                  ("icons.properties"));
            } catch (Exception ex) {
                log.warning("could not load icon mappings");
            }
        }


    }
}
