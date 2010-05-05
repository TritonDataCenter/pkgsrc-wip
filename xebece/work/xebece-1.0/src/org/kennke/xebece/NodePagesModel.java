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

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import java.util.logging.Logger;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class NodePagesModel {

    /** Our logger. */
    private static Logger log = Logger.getLogger("org.kennke.xebece");

    private Map nodePages;

    private Context model;

    public NodePagesModel(Context _model) {
        model = _model;
        nodePages = new HashMap();
        return;
    }

    public void setDOMNode(Node domNode) {

        nodePages.clear();

        NodeList children = domNode.getChildNodes();

        for (int i = 0; i < children.getLength(); i++) {

            Node childNode = children.item(i);

            if (childNode.getNodeType() == Node.ELEMENT_NODE) {

                Element el = (Element) childNode;
                String id = el.getAttribute("id");
                NodePageModel nodePage = new NodePageModel(model);
                nodePage.setDOMNode(el);
                nodePages.put(id, nodePage);
            }
        }

        return;
    }

    public Node getDOMNode(Document doc) {

        Element pagesEl = doc.createElement("pages");

        Iterator idIter = nodePages.keySet().iterator();
        while (idIter.hasNext()) {
            String id = (String) idIter.next();
            NodePageModel page = (NodePageModel) nodePages.get(id);
            Node pageNode = page.getDOMNode(doc);
            pagesEl.appendChild(pageNode);
            ((Element) pageNode).setAttribute("id", id);
            log.fine("node page model serialized");

        }

        return pagesEl;
    }

    public NodePageModel getNodePageModel(String id) {
        NodePageModel nodePage = (NodePageModel) nodePages.get(id);
        if (nodePage == null) {
            nodePage = new NodePageModel(model);
            nodePages.put(id, nodePage);
            log.fine("new node page model inserted");
        }
        return nodePage;
    }
}
