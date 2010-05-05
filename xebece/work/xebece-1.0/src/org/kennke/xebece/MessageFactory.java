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

import java.util.MissingResourceException;
import java.util.ResourceBundle;

/** Creates and returns localized messages by their IDs.
 * @author Roman Kennke
 * @version $Id$
 */
public final class MessageFactory {

    /** The only instance. */
    private static MessageFactory instance = null;

    /** The resources from which to read the messages. */
    private ResourceBundle resources;

    /** Returns an instance of MessageFactory.
     * @return an instance of MessageFactory.
     */
    public static MessageFactory newInstance() {
        if (MessageFactory.instance == null) {
            MessageFactory.instance = new MessageFactory();
        }
        return MessageFactory.instance;
    }

    /**
     * Creates a new instance. Only used internally. Use the static method
     * newInstance for public access.
     */
    private MessageFactory() {
        resources = ResourceBundle.getBundle(
                                     "org.kennke.xebece.messages");
        return;
    }

    /** Returns a localized message for the given key.
     * @param key the key of the message.
     * @return the localized message.
     */
    public String getMessage(final String key) {
        try {
            return resources.getString(key);
        } catch (MissingResourceException ex) {
            return key;
        }
    }
}
