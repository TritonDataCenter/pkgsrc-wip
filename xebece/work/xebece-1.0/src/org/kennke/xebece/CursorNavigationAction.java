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

public class CursorNavigationAction extends AbstractAction {

    /** The action command. */
    private String command;

    /**
     * Executes this Action.
     */
    public void run() {

        Context ctx = getModel();
        GUI gui = getView();

        XebeceTreeNode selectedNode = ctx.getSelectedNode();

        XebeceTreeNode foundEl = null;
        
        if (command.equals("navigation.up")) {
            foundEl = (XebeceTreeNode) selectedNode.getParent();
        } else if (command.equals("navigation.down")) {
            foundEl = (XebeceTreeNode) selectedNode.getChild(0);
        } else if (command.equals("navigation.left")) {
            XebeceTreeNode parentEl =
                (XebeceTreeNode) selectedNode.getParent();
            int myIndex = parentEl.getChildIndex(selectedNode);
            int leftIndex = myIndex - 1;
            if (leftIndex < 0) {
                leftIndex = parentEl.getChildCount() - 1;
            }
            foundEl = (XebeceTreeNode) parentEl.getChild(leftIndex);
        } else if (command.equals("navigation.right")) {
            XebeceTreeNode parentEl =
                (XebeceTreeNode) selectedNode.getParent();
            int myIndex = parentEl.getChildIndex(selectedNode);
            int rightIndex = myIndex + 1;
            if (rightIndex >= parentEl.getChildCount()) {
                rightIndex = 0;
            }
            foundEl = (XebeceTreeNode) parentEl.getChild(rightIndex);

        } else if (command.equals("navigation.root")) {

            foundEl = (XebeceTreeNode) selectedNode.getParent();
            if (foundEl != null) {
                while (foundEl.getParent() != null) {
                    foundEl = (XebeceTreeNode) foundEl.getParent();
                }
            }
        }

        if (foundEl != null) {
	    gui.centerNode(foundEl);
            ctx.setSelectedNode(foundEl);
        }

        return;
    }


    /**
     * Sets the command string of the action source.
     *
     * @param cmd the command string.
     */
    public void setActionCommand(String cmd) {

        command = cmd;
        return;
    }


}
