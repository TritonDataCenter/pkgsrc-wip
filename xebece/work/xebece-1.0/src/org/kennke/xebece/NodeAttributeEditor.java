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

import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSlider;
import javax.swing.JTextField;
import javax.swing.SpringLayout;

import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

import javax.swing.text.Document;


/**
 * A Swing component, that is used to edit the attributes of one node.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class NodeAttributeEditor extends JPanel {


    /** The maximum size for a node. */
    private static final int MAX_NODE_SIZE = 20;

    /** The node label input field. */
    private JTextField nodeLabelInput;

    /** The input field for attachments. */
    //    private JTextField attachmentInput;


    /** The node color input preview field. */
    private JButton nodeColorInput;

    /** The size input spinner. */
    private JSlider nodeSizeInput;

    /** The application view. */
    private GUI view;

    /** The current node. */
    private XebeceTreeNode currentNode;

    /** A lock for updating the view when the model changes. */
    private boolean nodeUpdateEnabled = true;

    /**
     * Creates a new instance of NodeAttributeEditor.
     *
     * @param newView the application view
     * @param newModel the application model
     */
    public NodeAttributeEditor(final GUI newView,
                               final Context newModel) {
        super();
        view = newView;

        MessageFactory mf = MessageFactory.newInstance();

        SpringLayout layout = new SpringLayout();
        setLayout(layout);

        JLabel nodeLabelLabel = new JLabel(mf.getMessage("elEditLabel"));
        add(nodeLabelLabel);
        nodeLabelInput = new JTextField();
        Document nodeLabelInputDoc = nodeLabelInput.getDocument();
        nodeLabelInputDoc.addDocumentListener(
            new DocumentListener() {
                public final void changedUpdate(final DocumentEvent e) {

                    if (nodeUpdateEnabled) {
                        if (currentNode != null) {
                            currentNode.setName(nodeLabelInput.getText());
                        }
                        view.refresh();
                    }

                }
                public final void insertUpdate(final DocumentEvent e) {
                    changedUpdate(e);
                }
                public final void removeUpdate(final DocumentEvent e) {
                    changedUpdate(e);
                }

            });


        add(nodeLabelInput);

        JLabel nodeColorLabel = new JLabel(mf.getMessage("elEditColor"));
        add(nodeColorLabel);
        nodeColorInput = new JButton();
        nodeColorInput.setActionCommand("selectColor");
        add(nodeColorInput);

        JLabel nodeSizeLabel = new JLabel(mf.getMessage("elEditSize"));
        add(nodeSizeLabel);
        nodeSizeInput = new JSlider(0, MAX_NODE_SIZE);

        nodeSizeInput.addChangeListener(
            new ChangeListener() {
                public final void stateChanged(final ChangeEvent e) {

                    if (nodeUpdateEnabled) {
                        currentNode.setSize(nodeSizeInput.getValue());
                        view.refresh();
                        //view.getViewConfiguration().runNow();
                    }

                }
            });

        add(nodeSizeInput);


        SpringUtilities.makeCompactGrid(this,
                                        3, 2,
                                        5, 5,
                                        5, 6);

//         int preferredHeight = editPanel.getPreferredSize().height;
//         editPanel.setPreferredSize(new Dimension(200, preferredHeight));
//         editPanel.setMaximumSize(editPanel.getPreferredSize());
//         editPanel.setAlignmentX(0.0F);

        return;
    }

    /**
     * Sets the node that is to be edited.
     *
     * @param node the node that should be edited.
     */
    public final void setNode(final XebeceTreeNode node) {

        nodeUpdateEnabled = false;
        currentNode = node;
        nodeLabelInput.setText(node.getName());
        //attachmentInput.setText(TreeNodeUtils.getHref(node));
        nodeColorInput.setBackground(node.getColor());
        nodeSizeInput.setValue(node.getSize());
        nodeUpdateEnabled = true;
        return;
    }

    /**
     * Adds a listener that is interested in action events from this
     * component and subcomponents.
     *
     * @param l the listener
     */
    public final void addActionListener(final ActionListener l) {

        nodeColorInput.addActionListener(l);

        return;
    }
}
