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
 * Exits the application.
 *
 * @author Roman Kennke
 */
public class FileExitAction extends AbstractAction {

    /**
     * Executes this action.
     */
    public final void run() {
        fileExit();
        return;
    }


    /**
     * Exits the application.
     */
    public final void fileExit() {
        MessageFactory mf = MessageFactory.newInstance();
        GUI gui = getView();

        boolean shutdown = false;

        if (getModel().isSticky()) {
            int conf = gui.showConfirmDialog
                (mf.getMessage("confirmSaveOnExit"));
            if (conf == GUI.OK_OPTION) {
                getController().triggerAction("file.save");
                //gui.closeWindow();
                shutdown = true;
                //Runtime.getRuntime().exit(0);
            } else if (conf == GUI.NO_OPTION) {
                //gui.closeWindow();
                shutdown = true;
                //            Runtime.getRuntime().exit(0);
            }
        } else {
            shutdown = true;
        }

        if (shutdown) {
            getController().shutdown();
        }
        return;
    }

}
