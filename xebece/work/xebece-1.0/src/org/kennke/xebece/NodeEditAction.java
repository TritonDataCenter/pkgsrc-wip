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

import java.util.logging.Level;
import java.util.logging.Logger;

import edu.berkeley.guir.prefuse.graph.DefaultEdge;

/**
 * Performs several node edit actions, namely copy, cut & paste.
 * This action understands 3 actions: <code>node.cut</code>,
 * <code>node.copy</code> and <code>node.paste</code>.
 *
 * @author Roman Kennke
 */
public class NodeEditAction extends AbstractAction {

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");

    /**
     * Executes this action.
     */
    public final void run() {

        String command = getActionCommand();
        if (command.equals("edit.cut")) {
            editCut();
        } else if (command.equals("edit.paste")) {
            editPaste();
        } else if (command.equals("edit.copy")) {
            editCopy();
        }

        return;
    }

    /**
     * Cuts out the currently selected node and move it into the
     *  cut-paste-buffer.
     */
    public final void editCut() {


        MessageFactory mf = MessageFactory.newInstance();
        Context ctx = getModel();
        GUI gui = getView();

            ctx.setUndoSnapshot();

            XebeceTreeNode node = ctx.getSelectedNode();
            XebeceTreeNode parent = (XebeceTreeNode) node.getParent();

            if (parent != null) {

                XebeceTreeNode clone = null;
                try {
                    clone = (XebeceTreeNode) node.clone();
                } catch (CloneNotSupportedException ex) {
                    log.log(Level.SEVERE, "cloning not possible", ex);
                }
                ctx.setCutBuffer(clone);

                parent.removeChild(node);

                gui.centerNode(parent);
                ctx.setSelectedNode(parent);
                ctx.setSticky(true);
            } else {
                gui.showInformationDialog(mf.getMessage("rootNotDeletable"));
            }
        return;
    }

    /**
     * Pastes the node in the cut-n-paste buffer as a child of the currently
     * selected node.
     */
    public final void editPaste() {

        Context ctx = getModel();

            ctx.setUndoSnapshot();

            XebeceTreeNode cutNode = ctx.getCutBuffer();
            XebeceTreeNode currentNode = ctx.getSelectedNode();

            try {
                ctx.setCutBuffer((XebeceTreeNode) cutNode.clone());
            } catch (CloneNotSupportedException ex) {
                log.log(Level.SEVERE, "cloning not possible", ex);
            }
            currentNode.addChild(new DefaultEdge(currentNode, cutNode));
            ctx.setSticky(true);

            GUI gui = getView();
            gui.getViewConfiguration().runNow();
        return;
    }

    /**
     * Copies the currently selected node into the cut-n-paste buffer.
     */
    public final void editCopy() {


        Context ctx = getModel();

            ctx.setUndoSnapshot();

            XebeceTreeNode node = ctx.getSelectedNode();

            XebeceTreeNode clone = null;
            try {
                clone = (XebeceTreeNode) node.clone();
            } catch (CloneNotSupportedException ex) {
                log.log(Level.SEVERE, "cloning not possible", ex);
            }
            ctx.setCutBuffer(clone);
        return;
    }


}
