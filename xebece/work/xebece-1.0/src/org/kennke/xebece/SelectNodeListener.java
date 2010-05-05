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

import edu.berkeley.guir.prefuse.graph.TreeNode;

/** A SelectNodeListener listens for the selection of nodes.
 * @author Roman Kennke.
 * @version $Id$
 */
public interface SelectNodeListener {

    /** Indicates the selection of a node.
     * @param node the node that has been selected.
     */
    void nodeSelected(TreeNode node);

    /** Indicates that a node has been double clicked.
     * @param node the node that has been double clicked.
     */
    void nodeDoubleClicked(TreeNode node);

}
