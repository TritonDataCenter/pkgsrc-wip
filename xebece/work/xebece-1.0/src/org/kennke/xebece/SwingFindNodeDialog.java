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
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

/**
 * A Swing dialog for input of a node name for finding a node in a graph.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class SwingFindNodeDialog extends JDialog {

    /** The distance between components. */
    private static final int RIGID_DIST = 5;

    /** The distance between components. */
    private static final int RIGID_DIST2 = 10;

    /** The width of the component border. */
    private static final int BORDER_WIDTH = 10;

    private static final String iconSize = "24x24";

    /** The text input field. */
    private JTextField nameInput;

    private EditFindAction action;

    /**
     * Creates a new instance.
     *
     * @param frame the parent frame.
     * @param title the title of the dialog.
     */
    public SwingFindNodeDialog(final JFrame frame, final String title,
                               EditFindAction _action) {
        super(frame, title, false);
        action = _action;
        JPanel mainPanel = new JPanel();
        mainPanel.setLayout(new BoxLayout(mainPanel,
                                          BoxLayout.PAGE_AXIS));

        MessageFactory mf = MessageFactory.newInstance();
        IconFactory icf = IconFactory.newInstance();

        JLabel findNodeLabel = new JLabel(mf.getMessage("findNodeLabel"),
                                          SwingConstants.LEFT);


        nameInput = new JTextField();
        nameInput.addActionListener(
            new ActionListener() {
                public void actionPerformed(final ActionEvent e) {
                    action.findNode(nameInput.getText());
                }
            });
        findNodeLabel.setLabelFor(nameInput);

        mainPanel.add(findNodeLabel);
        mainPanel.add(Box.createRigidArea(new Dimension(0, RIGID_DIST)));
        mainPanel.add(nameInput);
        mainPanel.setBorder(BorderFactory.createEmptyBorder(BORDER_WIDTH,
                                                            BORDER_WIDTH,
                                                            BORDER_WIDTH,
                                                            BORDER_WIDTH));

        // buttons
        JButton cancelButton = new JButton
            (mf.getMessage("dialog.button.cancel"));
        cancelButton.setIcon(icf.getSwingIcon("stock_calc-cancel", iconSize));
        cancelButton.addActionListener(
            new ActionListener() {
                public void actionPerformed(final ActionEvent e) {
                    dispose();
                }
            });

        JButton actionButton = new JButton(mf.getMessage("dialog.find.button.find"));
        actionButton.setIcon(icf.getSwingIcon("stock_right", iconSize));
        actionButton.addActionListener(
            new ActionListener() {
                public void actionPerformed(final ActionEvent e) {
                    action.findNode(nameInput.getText());
                }
            });

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(0, BORDER_WIDTH,
                                                              BORDER_WIDTH,
                                                              BORDER_WIDTH));
        buttonPanel.add(Box.createHorizontalGlue());
        buttonPanel.add(cancelButton);
        buttonPanel.add(Box.createRigidArea(new Dimension(RIGID_DIST2, 0)));
        buttonPanel.add(actionButton);

        getContentPane().add(mainPanel, BorderLayout.CENTER);
        getContentPane().add(buttonPanel, BorderLayout.PAGE_END);

        pack();
        setResizable(false);
        return;
    }

    /**
     * Opens the dialog. This methods does return, when the user closes the
     * dialog (model mode).
     */
    public final void showDialog() {
        setVisible(true);
        return;
    }
}
