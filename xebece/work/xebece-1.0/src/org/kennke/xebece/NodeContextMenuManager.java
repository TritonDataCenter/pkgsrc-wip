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

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;

import edu.berkeley.guir.prefuse.NodeItem;
import edu.berkeley.guir.prefuse.VisualItem;

import edu.berkeley.guir.prefuse.event.ControlAdapter;


/**
 * Creates, opens and manages popup menus for graph nodes.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public class NodeContextMenuManager extends ControlAdapter {

    private static final long DOUBLE_CLICK_INTERVAL = 500;
    
    private long lastTime = 0;
    
    /** The popup menu. */
    private JPopupMenu menu;

    /** The attachments submenu. */
    private JMenu attachmentsMenu;
    
    /** The attachments popup menu.*/
    private JPopupMenu attachmentsPopupMenu;
    
    private JMenuItem newChildNodes;
    private JMenuItem delete;
    private JMenuItem cut;
    private JMenuItem copy;
    private JMenuItem paste;
    private JMenuItem rename;
    private JMenuItem color;

    private JMenuItem nodePalette;
    private JMenuItem attachmentPalette;

    private Context model;

    private Collection actionListeners;
    
    private boolean editMode;

    protected NodeContextMenuManager() { }
    
    /**
     * Creates a new instance. The context menu is initialized here.
     */
    public NodeContextMenuManager(Context _model) {

        actionListeners = new HashSet();
        
        model = _model;
        
	editMode = true;

        MenuHelper mh = MenuHelper.newInstance();

        menu = new JPopupMenu();
        newChildNodes = mh.createMenuItem("node.newChildren");
        menu.add(newChildNodes);

        rename = mh.createMenuItem("node.rename");
        menu.add(rename);


        color = mh.createMenuItem("node.color");
        menu.add(color);

        nodePalette = mh.createMenuItem("view.windows.nodeProperties");
        menu.add(nodePalette);

        menu.addSeparator();
        
        attachmentPalette = mh.createMenuItem
            ("view.windows.attachments");
        menu.add(attachmentPalette);

        attachmentsMenu = mh.createMenu("node.attachments");
        attachmentsMenu.setIcon(new EmptyIcon(16, 16));
        menu.add(attachmentsMenu);

        menu.addSeparator();

        cut = mh.createMenuItem("edit.cut");
        menu.add(cut);

        copy = mh.createMenuItem("edit.copy");
        menu.add(copy);

        paste = mh.createMenuItem("edit.paste");
        menu.add(paste);

        delete = mh.createMenuItem("edit.del");
        menu.add(delete);



        attachmentsPopupMenu = new JPopupMenu();
        
        return;
    }

    /**
     * Updates the attachment menu for a specified node.
     *
     * @param node the node for which to create an attachment menu
     *
     * @return the attachments menu
     */
    private void updateAttachmentsMenu(XebeceTreeNode node) {
        
        // clear old items
        attachmentsMenu.removeAll();
        attachmentsPopupMenu.removeAll();
        
        // add attachments
        if (node != null) {
            List attachments = node.getAttachments();
            for (Iterator i = attachments.iterator(); i.hasNext();) {
            
                String attachment = (String) i.next();
                JMenuItem attachmentItem = new JMenuItem(attachment);
                attachmentItem.setActionCommand("openAttachment:" + attachment);
                // add actionListeners to attachment item
                for (Iterator ls = actionListeners.iterator(); ls.hasNext();) {
                    ActionListener l = (ActionListener) ls.next();
                    attachmentItem.addActionListener(l);
                }
                attachmentsMenu.add(attachmentItem);

                JMenuItem attachmentItem2 = new JMenuItem(attachment);
                attachmentItem2.setActionCommand("openAttachment:" + attachment);
                // add actionListeners to attachment item
                for (Iterator ls = actionListeners.iterator(); ls.hasNext();) {
                    ActionListener l = (ActionListener) ls.next();
                    attachmentItem2.addActionListener(l);
                }
                attachmentsPopupMenu.add(attachmentItem2);
            
            }
        }
    }
    
    
    public void editMode() {
	editMode = true;
    }

    public void viewMode() {
	editMode = false;
    }

    /**
     * Receives click events on visual items.
     *
     * @param item the item on which was clicked
     * @param ev the mouse event
     */
    public void itemClicked(final VisualItem item, final MouseEvent ev) {
        
        // check for double click
        long currentTime = System.currentTimeMillis();
        if ((currentTime - lastTime) < DOUBLE_CLICK_INTERVAL) {
            lastTime = System.currentTimeMillis();
            handleDoubleClick(item, ev);
        } else {
            lastTime = System.currentTimeMillis();
            
            if ((item instanceof NodeItem)
            && (ev.getButton() == MouseEvent.BUTTON3)
            && editMode) {
                
                XebeceTreeNode node = (XebeceTreeNode) item.getEntity();
                model.setSelectedNode(node);
                
                updateAttachmentsMenu(node);
                menu.show(ev.getComponent(), ev.getX(), ev.getY());
            }
        }
        return;
    }

    private void handleDoubleClick(final VisualItem item, final MouseEvent ev) {
        
        if ((item instanceof NodeItem)
        && (ev.getButton() == MouseEvent.BUTTON1)) {
            
            XebeceTreeNode node = (XebeceTreeNode) item.getEntity();
            model.setSelectedNode(node);

            if (node.getAttachments().size() == 1) {
                
                String attachment = (String) node.getAttachments().get(0);
                String cmd = "openAttachment:" + attachment;
                ActionEvent aev = new ActionEvent(attachmentsPopupMenu, 0, cmd);
                for (Iterator i = actionListeners.iterator(); i.hasNext();) {
                    ActionListener l = (ActionListener) i.next();
                    l.actionPerformed(aev);
                }
            } else {
            
                updateAttachmentsMenu(node);
                attachmentsPopupMenu.show(ev.getComponent(), ev.getX(), ev.getY());
            }
        }
        
    }
    
    
    public void addActionListener(ActionListener l) {

        newChildNodes.addActionListener(l);
        delete.addActionListener(l);
        cut.addActionListener(l);
        copy.addActionListener(l);
        paste.addActionListener(l);
        rename.addActionListener(l);
        color.addActionListener(l);

        nodePalette.addActionListener(l);
        attachmentPalette.addActionListener(l);

        actionListeners.add(l);
        
        return;
    }


}
