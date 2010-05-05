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

/**
 * Listens for changes in a {@link ViewConfigurationModel}.
 *
 * @author Roman Kennke
 */
public interface ViewConfigurationListener {


    /**
     * Notifies the listener of a change in the view configuration.
     *
     * @param ev the ViewConfigurationEvent
     */
    void viewConfigurationChanged(ViewConfigurationEvent ev);

    /**
     * Notifies the listener of a change in the edge type.
     *
     * @param ev the ViewConfigurationEvent
     */
    void edgeTypeChanged(ViewConfigurationEvent ev);

    /**
     * Notifies the listener of a change in the view layout.
     *
     * @param ev the ViewConfigurationEvent
     */
    void layoutChanged(ViewConfigurationEvent ev);

    /**
     * Notifies the listener of a change in the colorization.
     *
     * @param ev the ViewConfigurationEvent
     */
    void nodeColorFunctionChanged(ViewConfigurationEvent ev);

}
