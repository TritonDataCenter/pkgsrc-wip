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
 * Deletes a node.
 *
 * @author Roman Kennke
 */
public class DeleteNodeAction extends AbstractAction {

    /**
     * Executes this action.
     */
    public final void run() {


        MessageFactory mf = MessageFactory.newInstance();
        Context ctx = getModel();
        GUI gui = getView();

            // undo snapshot
            ctx.setUndoSnapshot();
            XebeceTreeNode node = ctx.getSelectedNode();
            if (node != null) {
                XebeceTreeNode parent =
                    (XebeceTreeNode) node.getParent();

                if (parent != null) {

                    parent.removeChild(node);
                    gui.centerNode(parent);
                    ctx.setSelectedNode(parent);

                } else {
                    gui.showInformationDialog
                        (mf.getMessage("rootNotDeletable"));
                }
            }
            ctx.setSticky(true);

        return;

    }

}
