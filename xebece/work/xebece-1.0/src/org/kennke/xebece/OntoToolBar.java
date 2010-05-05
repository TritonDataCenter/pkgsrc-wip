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

import java.awt.Dimension;

import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import java.io.IOException;
import java.io.InputStream;


import java.util.Properties;
import java.util.StringTokenizer;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JPanel;
import javax.swing.JToolBar;


/**
 * The toolbar for the Xebece application.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class OntoToolBar extends JToolBar {

    /** The component class names. */
    private String[] compClasses;

    /** The component labels. */
    private String[] compLabels;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    private static final String iconSize = "24x24";

    private Context model;

    private JButton fileNewButton;
    private JButton fileOpenButton;
    private JButton fileSaveButton;
    private JButton fileSaveAsButton;
    private JButton fileExportButton;

    private JButton editCutButton;
    private JButton editCopyButton;
    private JButton editPasteButton;
    private JButton editDeleteButton;
    private JButton editFindButton;
    private JButton editBackgroundButton;

    private JButton viewFullScreenButton;

    private JButton addButton;
    private JButton selectButton;
    private JButton removeButton;


    protected OntoToolBar() { }
    
    /**
     * Creates a new toolbar.
     */
    public OntoToolBar(Context _model) {

        model = _model;

        setRollover(true);


        IconFactory icf = IconFactory.newInstance();
        MessageFactory mf = MessageFactory.newInstance();

        fileNewButton = new JButton();
        fileNewButton.setIcon(icf.getSwingIcon("file.new", iconSize));
        fileNewButton.setToolTipText(mf.getMessage("fileNewTooltip"));
        fileNewButton.setActionCommand("file.new");
        this.add(fileNewButton);

        fileOpenButton = new JButton();
        fileOpenButton.setIcon(icf.getSwingIcon("file.open", iconSize));
        fileOpenButton.setToolTipText(mf.getMessage("fileOpenTooltip"));
        fileOpenButton.setActionCommand("file.open");
        this.add(fileOpenButton);

        fileSaveButton = new JButton();
        fileSaveButton.setIcon(icf.getSwingIcon("file.save", iconSize));
        fileSaveButton.setToolTipText(mf.getMessage("fileSaveTooltip"));
        fileSaveButton.setActionCommand("file.save");
        this.add(fileSaveButton);

        fileSaveAsButton = new JButton();
        fileSaveAsButton.setIcon(icf.getSwingIcon("file.saveAs", iconSize));
        fileSaveAsButton.setToolTipText(mf.getMessage("fileSaveAsTooltip"));
        fileSaveAsButton.setActionCommand("file.saveAs");
        this.add(fileSaveAsButton);

        fileExportButton = new JButton();
        fileExportButton.setIcon(icf.getSwingIcon("file.export", iconSize));
        fileExportButton.setToolTipText(mf.getMessage("fileExportTooltip"));
        fileExportButton.setActionCommand("file.export");
        this.add(fileExportButton);

        this.addSeparator();


        editCutButton = new JButton();
        editCutButton.setIcon(icf.getSwingIcon("edit.cut", iconSize));
        editCutButton.setToolTipText(mf.getMessage("editCutTooltip"));
        editCutButton.setActionCommand("edit.cut");
        this.add(editCutButton);


        editCopyButton = new JButton();
        editCopyButton.setIcon(icf.getSwingIcon("edit.copy", iconSize));
        editCopyButton.setToolTipText(mf.getMessage("editCopyTooltip"));
        editCopyButton.setActionCommand("edit.copy");
        this.add(editCopyButton);

        editPasteButton = new JButton();
        editPasteButton.setIcon(icf.getSwingIcon("edit.paste", iconSize));
        editPasteButton.setToolTipText(mf.getMessage("editPasteTooltip"));
        editPasteButton.setActionCommand("edit.paste");
        this.add(editPasteButton);

        editDeleteButton = new JButton();
        editDeleteButton.setIcon(icf.getSwingIcon("edit.del", iconSize));
        editDeleteButton.setToolTipText(mf.getMessage("editDeleteTooltip"));
        editDeleteButton.setActionCommand("edit.del");
        this.add(editDeleteButton);

        this.addSeparator();

        editFindButton = new JButton();
        editFindButton.setIcon(icf.getSwingIcon("edit.find", iconSize));
        editFindButton.setToolTipText(mf.getMessage("editFindTooltip"));
        editFindButton.setActionCommand("edit.find");
        this.add(editFindButton);

        editBackgroundButton = new JButton();
        editBackgroundButton.setIcon(icf.getSwingIcon("edit.background",
                                                      iconSize));
        editBackgroundButton.setToolTipText(
                                       mf.getMessage("editBackgroundTooltip"));
        editBackgroundButton.setActionCommand("edit.background");
        this.add(editBackgroundButton);

        this.addSeparator();

        viewFullScreenButton = new JButton();
        viewFullScreenButton.setIcon(icf.getSwingIcon("view.fullScreen",
                                                      iconSize));
        viewFullScreenButton.setToolTipText(
                                       mf.getMessage("viewFullScreenTooltip"));
        viewFullScreenButton.setActionCommand("view.fullScreen");
        this.add(viewFullScreenButton);


        this.addSeparator();

        createAddComponentTool(this);

        return;
    }

    /**
     * Creates the add component toolbar.
     *
     * @param toolBar the toolbar to which we add the new parts
     */
    private void createAddComponentTool(final JToolBar toolBar) {


        // read in components
        Properties pageComponentClasses = new Properties();
        InputStream in = getClass().getResourceAsStream
            ("pageComponents.properties");
        try {
            pageComponentClasses.load(in);
        } catch (IOException ex) {
            log.log(Level.SEVERE, "page component list cannot be read: ", ex);
            System.exit(0);
        }

        StringTokenizer classes = new StringTokenizer
            (pageComponentClasses.getProperty
             ("org.kennke.xebece.pageComponents.classes"));
        compClasses = new String[classes.countTokens()];
        compLabels  = new String[classes.countTokens()];
        int index = 0;
        while (classes.hasMoreTokens()) {
            try {
                String className = classes.nextToken();
                compClasses[index] = className;
                Class compClass = Class.forName(className);
                PageComponent comp = (PageComponent) compClass.newInstance();
                compLabels[index] = comp.getDisplayName();
                log.info("loaded page component: "
                         + comp.getDisplayName());
                index++;
            } catch (ClassNotFoundException ex) {
                log.throwing("org.kennke.xebece.OntoToolBar",
                             "createAddComponentTool", ex);
            } catch (InstantiationException ex) {
                log.throwing("org.kennke.xebece.OntoToolBar",
                             "createAddComponentTool", ex);
            } catch (IllegalAccessException ex) {
                log.throwing("org.kennke.xebece.OntoToolBar",
                             "createAddComponentTool", ex);
            }
        }

        JPanel selectPane = new JPanel();
        final JComboBox selectBox = new JComboBox(compLabels);
        selectPane.add(selectBox);
        selectPane.setMaximumSize(new Dimension(100, 50));

        selectBox.setSelectedIndex(0);
        model.setSelectedPageComponentType(compClasses[0]);

        selectBox.addItemListener
            (new ItemListener() {
                    public final void itemStateChanged(final ItemEvent ev) {
                        String className = compClasses
                            [selectBox.getSelectedIndex()];
                        model.setSelectedPageComponentType(className);
                    }
                }
             );

        toolBar.add(selectPane);

        IconFactory icf = IconFactory.newInstance();
        MessageFactory mf = MessageFactory.newInstance();

        addButton = new JButton();
        addButton.setIcon(icf.getSwingIcon("tool.insert", iconSize));
        addButton.setActionCommand("nodePage.placeComponent");
        addButton.setToolTipText(mf.getMessage("placeComponentTooltip"));
        toolBar.add(addButton);

        selectButton = new JButton(icf.getSwingIcon("tool.selection", iconSize));
        selectButton.setActionCommand("nodePage.cancelPlacement");
        selectButton.setToolTipText(mf.getMessage("cancelPlacementTooltip"));
        toolBar.add(selectButton);

        removeButton = new JButton(icf.getSwingIcon("tool.remove",
                                                    iconSize));
        removeButton.setActionCommand("nodePage.remove");
        selectButton.setToolTipText(mf.getMessage("removeComponentTooltip"));
        toolBar.add(removeButton);

        return;
    }

    /**
     * Sets up the action listener for this toolbar.
     */
    public void addActionListener(ActionListener l) {

        fileNewButton.addActionListener(l);
        fileOpenButton.addActionListener(l);
        fileSaveButton.addActionListener(l);
        fileSaveAsButton.addActionListener(l);
        fileExportButton.addActionListener(l);

        editCutButton.addActionListener(l);
        editCopyButton.addActionListener(l);
        editPasteButton.addActionListener(l);
        editDeleteButton.addActionListener(l);
        editFindButton.addActionListener(l);
        editBackgroundButton.addActionListener(l);

        viewFullScreenButton.addActionListener(l);

        addButton.addActionListener(l);
        selectButton.addActionListener(l);
        removeButton.addActionListener(l);

        return;
    }
}
