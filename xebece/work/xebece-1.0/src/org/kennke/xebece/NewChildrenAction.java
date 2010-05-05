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

import java.util.StringTokenizer;

import java.util.logging.Logger;

import edu.berkeley.guir.prefuse.graph.DefaultEdge;


/**
 * This action prompts for and creates new child nodes.
 *
 * @author Roman Kennke
 */
public class NewChildrenAction extends AbstractAction {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");


    /**
     * Executes the new child node action.
     */
    public final void run() {

        getView().showNewChildNodesDialog(this);

        return;

    }

    /**
     * Actually adds new child nodes to the currently selected node.
     *
     * @param children the names of the childnodes, separated by ','.
     */
    public final void addChildNodes(final String children) {

        log.entering("org.kennke.xebece.NewChildrenAction", "addChildNodes");

        XebeceTreeNode selectedNode = getModel().getSelectedNode();

        StringTokenizer tokens = new StringTokenizer(children, ",");
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            XebeceTreeNode child = new XebeceTreeNode();
            child.setName(token);
            selectedNode.addChild(new DefaultEdge(selectedNode, child));
        }

        getModel().setSticky(true);
        getView().getViewConfiguration().runNow();
        return;
    }


}
