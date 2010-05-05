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

import java.util.ArrayList; 
import java.util.Iterator; 
import java.util.List; 

public class EditFindAction extends AbstractAction {

    public void run() {
        editFind();
        return;
    }


    /** Searches a node by name.
     */
    public void editFind() {

        // create and start FindDialog
        GUI gui = getView();
        gui.startFindDialog(this);
        return;
    }

    /** Finds a node by name or part of it.
     * @param findText the text snipped to be found in names.
     */
    public void findNode(final String findText) {

        Context ctx = getModel();
        XebeceTreeNode root = (XebeceTreeNode)
            ctx.getDocument().getTree().getRoot();
        List nodeList = flattenTree(root);
        XebeceTreeNode foundEl = findElement(nodeList,
                                                ctx.getSelectedNode(),
                                                findText);
        if (foundEl != null) {
            ctx.setSelectedNode(foundEl);
            GUI gui = getView();
            gui.centerNode(foundEl);

        }
        return;
    }

    /** Creates a list containing all nodes of the specified tree.
     * @param rootEl the root of the tree.
     * @return a list containing all elements of the tree.
     */
    private List flattenTree(final XebeceTreeNode rootEl) {

        List nodeList = new ArrayList();
        recursiveFlattenTree(rootEl, nodeList);
        nodeList.addAll(nodeList);
        return nodeList;
    }

    /** Internal recursive method for flattening a tree.
     * @param rootEl the root of the current sub-tree.
     * @param nodeList the list of nodes.
     */
    private void recursiveFlattenTree(final XebeceTreeNode rootEl,
                                      final List nodeList) {

        // add root element to list
        nodeList.add(rootEl);
        Iterator children = rootEl.getChildren();
        while (children.hasNext()) {
            XebeceTreeNode node = (XebeceTreeNode) children.next();

            recursiveFlattenTree(node, nodeList);
        }


        return;
    }

    /** Finds an element from a list <code>nodeList</code>, starting at the
     * element <code>start</code> containing the string
     * <code>findString</code>.
     * @param nodeList the list of nodes to search through.
     * @param start the element to start with.
     * @param findString the string to look for.
     * @return the element found.
     */
    public XebeceTreeNode findElement(final List nodeList,
                                         final XebeceTreeNode start,
                                         final String findString) {


        // find start element
        int startIndex = 0;
        for (startIndex = 0; startIndex < nodeList.size(); startIndex++) {
            if (nodeList.get(startIndex) == start) {
                break;
            }
        }

        XebeceTreeNode foundEl = null;
        for (int i = startIndex + 1; i < nodeList.size(); i++) {
            XebeceTreeNode el = (XebeceTreeNode) nodeList.get(i);
            if (el.getName().matches(".*" + findString + ".*")) {
                foundEl = el;
                break;
            }
        }

        return foundEl;
    }


}
