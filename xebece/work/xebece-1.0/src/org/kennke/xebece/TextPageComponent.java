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
 *  MERCHANTABILITY or FITNESS FOR A PARICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Xebeche; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

package org.kennke.xebece;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JComponent;
import javax.swing.JEditorPane;
import javax.swing.JDialog;

import javax.swing.text.BadLocationException;

import javax.swing.text.rtf.RTFEditorKit;

import org.w3c.dom.CDATASection;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * A text component for display in node pages.
 *
 * @author Roman Kennke
 */
public class TextPageComponent implements PageComponent, Cloneable {

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The text editor. */
    private JEditorPane textEditor;

    /** The editor kit. */
    private RTFEditorKit rtfEditor;

    /** The dimension of this component. */
    private PageComponentDimension dimension;

    /** The toolbar dialog. */
    private JDialog myToolbarFrame;

    /** The textual data (RTF) .*/
    private String data;

    /**
     * Creates a new instance.
     */
    public TextPageComponent() {

        dimension = new PageComponentDimension(0.0, 0.0,
                                               NodePagePane.DEFAULT_WIDTH,
                                               NodePagePane.DEFAULT_HEIGHT);
    }

    /**
     * Returns the name of this component as it should be displayed.
     *
     * @return the name of this component as it should be displayed
     */
    public final String getDisplayName() {
        MessageFactory mf = MessageFactory.newInstance();
        return mf.getMessage("componentLabel.text");
    }

    /**
     * Returns a Swing component which is then used to display the
     * PageComponent.
     *
     * @param view the application view
     *
     * @return a usable Swing component.
     */
    public final JComponent getSwingComponent(final GUI view) {

        if (textEditor == null) {
            createSwingComponent(view);
        }
        return textEditor;
    }

    /**
     * Sets the application model.
     *
     * @param model the application model
     */
    public final void setModel(final Context model) {
        return;
    }

    /**
     * Switches the PageComponent into edit mode.
     * In this mode, the user should be able to edit the component and
     * its propertues.
     *
     * The Swing component that was returned before in #getSwingComponent
     * should reflect that ability.
     */
    public final void editMode() {

        textEditor.setEditable(true);
        textEditor.setRequestFocusEnabled(true);
        log.fine("edit mode enabled");
        return;
    }

    /**
     * Switches the PageComponent into view mode.
     * In this mode, the user must not be able to edit the component and its
     * properties. Instead, now the component must render itself for viewing
     * on the Swing component that was returned before by #getSwingComponent.
     */
    public final void viewMode() {

        textEditor.setEditable(false);
        textEditor.setRequestFocusEnabled(false);

        log.fine("view mode enabled");
        return;
    }

    /**
     * Sets the focus on this component.
     */
    public final void focus() {


        log.finer("focus on text component set");
        if (textEditor.isEditable()) {
            log.finer("text component is editable");
        }
    }

    /**
     * Draws focus from this component.
     */
    public void unfocus() {

    }


    /**
     * Parses the component and its properties out of an XML DOM tree fragment.
     *
     * @param node the components node
     */
    public final void setDOMNode(final Node node) {

        if (node.getNodeType() == Node.ELEMENT_NODE) {

            // read dimension
            Element el = (Element) node;
            String xStr = el.getAttribute("xPos");
            String yStr = el.getAttribute("yPos");
            String widthStr = el.getAttribute("width");
            String heightStr = el.getAttribute("height");

            double x = 0;
            double y = 0;
            double width = NodePagePane.DEFAULT_WIDTH;
            double height = NodePagePane.DEFAULT_HEIGHT;
            try {
                x = Double.parseDouble(xStr);
            } catch (NumberFormatException ex) {
                log.log(Level.FINE, "couldn't parse Double", ex);
            }
            try {
                y = Double.parseDouble(yStr);
            } catch (NumberFormatException ex) {
                log.log(Level.FINE, "couldn't parse Double", ex);
            }
            try {
                width = Double.parseDouble(widthStr);
            } catch (NumberFormatException ex) {
                log.log(Level.FINE, "couldn't parse Double", ex);
            }
            try {
                height = Double.parseDouble(heightStr);
            } catch (NumberFormatException ex) {
                log.log(Level.FINE, "couldn't parse Double", ex);
            }

            dimension = new PageComponentDimension(x, y, width, height);

            StringBuffer text = new StringBuffer();

            NodeList children = node.getChildNodes();
            for (int i = 0; i < children.getLength(); i++) {
                Node child = children.item(i);
                int nodeType = child.getNodeType();
                switch(nodeType) {
                case Node.CDATA_SECTION_NODE:
                case Node.TEXT_NODE:
                    CharacterData cdata = (CharacterData) child;
                    text.append(cdata.getData());
                    break;
                default:
                    log.severe("unexpected DOM element in <text></text>");
                }
            }


            data = text.toString();

        }

        return;

    }


    /**
     * Serializes the component and its properties into an XML DOM tree
     * fragment.
     * This method should not modify the <code>node</code> that was
     * supplied as argument. Instead it should only use it to create new
     * DOM Nodes, which is then returned by this method. The caller of this
     * method is responsibly to add the returned note in the right place in
     * the document.
     *
     * @param doc use this document to create new nodes
     *
     * @return the node that represents this PageComponent and its properties
     */
    public final Node getDOMNode(final Document doc) {


        Element textEl = doc.createElement("text");
        textEl.setAttribute("xPos", String.valueOf(dimension.getX()));
        textEl.setAttribute("yPos", String.valueOf(dimension.getY()));
        textEl.setAttribute("width", String.valueOf(dimension.getWidth()));
        textEl.setAttribute("height", String.valueOf(dimension.getHeight()));

        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            if (textEditor == null) {
                if (data != null) {
                    OutputStreamWriter strOut = new OutputStreamWriter(out);
                    strOut.write(data);
                    strOut.flush();
                } else {
                    RTFEditorKit myRtfEditor = new RTFEditorKit();
                    javax.swing.text.Document document =
                        myRtfEditor.createDefaultDocument();
                    myRtfEditor.write(out, document, 0, document.getLength());
                }
            } else {
                javax.swing.text.Document document = textEditor.getDocument();
                rtfEditor.write(out, document, 0, document.getLength());
            }
        } catch (IOException ex) {
            log.log(Level.SEVERE, "could not write RTF document", ex);
        } catch (BadLocationException ex) {
            log.log(Level.SEVERE, "could not write RTF document", ex);
        }

        String textdata = new String(out.toByteArray());
        CDATASection cData = doc.createCDATASection(textdata);
        textEl.appendChild(cData);

        return textEl;
    }

    /**
     * Returns the dimension of this component.
     *
     * @return the dimension of this component
     */
    public final PageComponentDimension getDimension() {
        return dimension;
    }

    /**
     * Sets the dimension of this component.
     *
     * @param newDimension the dimension to be set
     */
    public final void setDimension(final PageComponentDimension newDimension) {
        dimension = newDimension;
        return;
    }

    /**
     * Returns the toolbar for this component.
     *
     * @param view the application view
     *
     * @return the toolbar for this component
     */
    public final JDialog getToolbar(final GUI view) {

        if (myToolbarFrame == null) {
            myToolbarFrame = TextToolbarFactory.createToolbar(view);
        }
        return myToolbarFrame;
    }

    /**
     * Creates out swing component.
     *
     * @param view the application view
     */
    private void createSwingComponent(final GUI view) {

        createSwingComponent();
        return;
    }

    private void createSwingComponent() {
        textEditor = new JEditorPane();
        rtfEditor = new RTFEditorKit();
        textEditor.setEditorKit(rtfEditor);
        textEditor.setEditable(true);
        textEditor.setRequestFocusEnabled(true);
        if (data != null) {
            textEditor.setText(data);
        }
    }

    /**
     * Creates and returns a 1:1 copy of this object.
     *
     * @return a 1:1 copy of this object
     *
     * @throws CloneNotSupportedException if cloning is not supported
     *
     * @see java.lang.Object#clone
     */
    public final Object clone() throws CloneNotSupportedException {

        TextPageComponent clone = (TextPageComponent) super.clone();
        if (textEditor != null) {

            clone.rtfEditor = new RTFEditorKit();
            clone.textEditor = new JEditorPane();
            clone.textEditor.setEditorKit(rtfEditor);

            // copy document
            javax.swing.text.Document doc = textEditor.getDocument();
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            try {
                rtfEditor.write(out, doc, 0, doc.getLength());
                byte[] buffer = out.toByteArray();
                ByteArrayInputStream in = new ByteArrayInputStream(buffer);
                javax.swing.text.Document cloneDoc
                    = clone.textEditor.getDocument();
                clone.rtfEditor.read(in, cloneDoc, 0);
            } catch (IOException ex) {
                log.log(Level.SEVERE, "document content could not be copied",
                        ex);
            } catch (BadLocationException ex) {
                log.log(Level.SEVERE, "document content could not be copied",
                        ex);
            }
        }
        clone.dimension = (PageComponentDimension) dimension.clone();
        clone.myToolbarFrame = null;
        return clone;
    }

    public void setText(String text) {
        if (textEditor == null) {
            createSwingComponent();
        }
        javax.swing.text.Document doc = textEditor.getDocument();
        try {
            doc.insertString(doc.getLength(), text.trim(), null);
        } catch (BadLocationException ex) {
            log.log(Level.SEVERE, "error during append of text", ex);
        }
    }
}
