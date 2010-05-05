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
 * Starts or cancels the placement of a new presentation component.
 * This action understands two commands: <code>nodePage.placeComponent</code>
 * starts a placement, <code>nodePage.cancelPlacement</code> cancels a
 * placement.
 *
 * @author Roman Kennke
 */
public class PlaceComponentAction extends AbstractAction {

    /**
     * Executes this action.
     */
    public final void run() {

        GUI gui = getView();
        String command = getActionCommand();
        if (command.equals("nodePage.placeComponent")) {
            Context ctx = getModel();
            String type = ctx.getSelectedPageComponentType();

            PageComponentFactory pcf = PageComponentFactory.getInstance();
            PageComponent pc = pcf.getPageComponent(type, getModel());

            gui.placeComponent(pc);
            ctx.setSticky(true);
        } else if (command.equals("nodePage.cancelPlacement")) {

            gui.cancelPlacement();
        }

        return;
    }

}
