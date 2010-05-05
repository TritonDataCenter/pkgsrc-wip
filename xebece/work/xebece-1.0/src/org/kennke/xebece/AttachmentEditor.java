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

import java.awt.BorderLayout;
import java.awt.Dimension;

import java.awt.event.ActionListener;

import java.util.Iterator;
import java.util.List;

import java.util.logging.Logger;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

/**
 * A Swing component which displays a list of attachments and allows the
 * user to add, delete or open an attachment file.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class AttachmentEditor extends JComponent {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The space between components. */
    private static final int RIGID_AREA_Y = 5;

    /** The width of the border of this component. */
    private static final int BORDER_WIDTH = 10;

    /** the distance between buttons. */
    private static final int BUTTON_DISTANCE = 10;

    /** The attachment list display. */
    private JList attachmentList;

    /** The attachment list model. */
    private DefaultListModel listModel;

    private JButton openButton;
    private JButton delButton;
    private JButton addButton;

    private Context model;

    /**
     * Creates a new instance of AttachmentEditor.
     */
    public AttachmentEditor(Context _model) {
        super();

        model = _model;
        MessageFactory mf = MessageFactory.newInstance();

        setLayout(new BorderLayout());

        JPanel listPanel = new JPanel();
        listPanel.setLayout(new BoxLayout(listPanel, BoxLayout.PAGE_AXIS));
        // the label
        JLabel label = new JLabel(mf.getMessage("attachmentEditor.label"));

        // the selection list
        listModel = new DefaultListModel();
        attachmentList = new JList(listModel);
        attachmentList.addListSelectionListener(new MySelectionListener());
        label.setLabelFor(attachmentList);
        JScrollPane listScroller = new JScrollPane(attachmentList);
        listScroller.setAlignmentX(LEFT_ALIGNMENT);
        listPanel.add(label);
        listPanel.add(Box.createRigidArea(new Dimension(0, RIGID_AREA_Y)));
        listPanel.add(listScroller);
        listPanel.setBorder(BorderFactory.createEmptyBorder(BORDER_WIDTH,
                                                            BORDER_WIDTH,
                                                            BORDER_WIDTH,
                                                            BORDER_WIDTH));

        add(listPanel, BorderLayout.CENTER);


        // the button panel
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new BoxLayout(buttonPanel, BoxLayout.LINE_AXIS));
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(0, BORDER_WIDTH,
                                                              BORDER_WIDTH,
                                                              BORDER_WIDTH));

        buttonPanel.add(Box.createHorizontalGlue());
        addButton = new JButton(mf.getMessage("attachments.add"));
        addButton.setActionCommand("addAttachment");

        buttonPanel.add(addButton);
        buttonPanel.add(Box.createRigidArea(new Dimension(BUTTON_DISTANCE,
                                                          0)));

        delButton = new JButton(mf.getMessage("attachments.delete"));
        delButton.setActionCommand("deleteAttachment");
        buttonPanel.add(delButton);
        buttonPanel.add(Box.createRigidArea(new Dimension(BUTTON_DISTANCE,
                                                          0)));

        openButton = new JButton(mf.getMessage("attachments.open"));
        openButton.setActionCommand("openAttachment");
        buttonPanel.add(openButton);

        add(buttonPanel, BorderLayout.PAGE_END);

        return;
    }

    /**
     * Sets the node for which we edit the attachments.
     *
     * @param node the node for which we edit the attachments.
     */
    public final void setNode(final XebeceTreeNode node) {

        List attachments = node.getAttachments();
        listModel.clear();

        Iterator attIter = attachments.iterator();
        while (attIter.hasNext()) {

            Object att = attIter.next();
            listModel.addElement(att);
        }

        return;
    }

    public void addActionListener(ActionListener l) {

        openButton.addActionListener(l);
        addButton.addActionListener(l);
        delButton.addActionListener(l);

        return;
    }

    class MySelectionListener implements ListSelectionListener {
        public void valueChanged(ListSelectionEvent ev) {
            model.setSelectedAttachmentName
                ((String) attachmentList.getSelectedValue());
            log.fine("attachment selected: "
                     + (String) attachmentList.getSelectedValue());
        }
    }
}
