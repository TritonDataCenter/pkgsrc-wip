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
 * An action which can be performed in response to user interaction.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public interface Action {

    void run();

    /**
     * Sets the command string of the action source.
     *
     * @param cmd the command string.
     */
    void setActionCommand(String cmd);

    void setView(GUI view);

    GUI getView();

    void setModel(Context model);

    Context getModel();

    void setController(Controller controller);

    Controller getController();

    void setParameter(String param);

    String getParameter();
}
