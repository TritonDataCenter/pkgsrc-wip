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
 * Sets the Graph layout according to the user's selection.
 *
 * @author Roman Kennke
 */
public class TreeLayoutAction extends AbstractAction {

    /**
     * Starts this action.
     */
    public final void run() {
        if (getActionCommand().equals("view.layout.balloonLayout")) {
            balloonLayout();
        } else if (getActionCommand().equals
                   ("view.layout.forceDirectedLayout")) {
            forceDirectedLayout();
        } else if (getActionCommand().equals("view.layout.indentedLayout")) {
            indentedLayout();
        } else if (getActionCommand().equals("view.layout.radialLayout")) {
            radialLayout();
        } else if (getActionCommand().equals("view.layout.randomLayout")) {
            randomLayout();
        } else if (getActionCommand().equals("view.layout.squarifiedLayout")) {
            squarifiedLayout();
        } else if (getActionCommand().equals("view.layout.topDownLayout")) {
            topDownLayout();
        } else if (getActionCommand().equals("view.layout.verticalLayout")) {
            verticalLayout();
        }
        return;
    }

    /**
     * Sets the balloon layout.
     */
    private void balloonLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.BALLOON_TREE_LAYOUT);
        return;
    }

    /**
     * Sets the force directed layout.
     */
    private void forceDirectedLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.FORCE_DIRECTED_LAYOUT);
        return;
    }

    /**
     * Sets the indented layout.
     */
    private void indentedLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.INDENTED_TREE_LAYOUT);
        return;
    }

    /**
     * Sets the radial layout.
     */
    private void radialLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.RADIAL_TREE_LAYOUT);
        return;
    }

    /**
     * Sets the random layout.
     */
    private void randomLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.RANDOM_LAYOUT);
        return;
    }


    /**
     * Sets the squarified layout.
     */
    private void squarifiedLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.SQUARIFIED_TREE_MAP_LAYOUT);
        return;
    }


    /**
     * Sets the top down layout.
     */
    private void topDownLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.TOP_DOWN_TREE_LAYOUT);
        return;
    }

    /**
     * Sets the vertical layout.
     */
    private void verticalLayout() {

        getModel().getDocument().getViewConfiguration()
            .setLayout(GraphLayout.VERTICAL_TREE_LAYOUT);
        return;
    }



}
