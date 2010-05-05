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
 * Sets the node color function according to the selection of the user.
 *
 * @author Roman Kennke
 */
public class NodeColorAction extends AbstractAction {


    /**
     * Starts this action.
     */
    public final void run() {

        ViewConfigurationModel vc =
            getModel().getDocument().getViewConfiguration();

        String command = getActionCommand();

        if (command.equals("view.nodeColor.redBlue")) {
            vc.setColorFunction(NodeColorFunction.RED_BLUE);
        } else if (command.equals("view.nodeColor.blueGray")) {
            vc.setColorFunction(NodeColorFunction.BLUE_GRAY);
        } else if (command.equals("view.nodeColor.yellowBlue")) {
            vc.setColorFunction(NodeColorFunction.YELLOW_BLUE);
        } else if (command.equals("view.nodeColor.manual")) {
            vc.setColorFunction(NodeColorFunction.MANUAL);
        }

        getView().getViewConfiguration().runNow();
    }


}
