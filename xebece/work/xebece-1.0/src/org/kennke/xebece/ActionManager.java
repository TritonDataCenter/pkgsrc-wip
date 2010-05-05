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

import java.io.IOException;
import java.io.InputStream;

import java.util.Properties;

import java.util.logging.Logger;

/**
 * Determines and instantiates an {@link Action} class for a specified
 * action command.
 *
 * @author Roman Kennke (roman@ontographics.com)
 */
public final class ActionManager {

    /** The actions registry. */
    private Properties actions;

    private GUI view;

    private Context model;

    private Controller ctrl;

    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** No public access. */
    public ActionManager(Context _model, GUI _view, Controller _ctrl) {

        model = _model;
        view = _view;
        ctrl = _ctrl;

        try {
            actions = new Properties();
            InputStream in = getClass().getResourceAsStream(
                                                         "actions.properties");
            actions.load(in);
        } catch (IOException ex) {
            log.throwing("org.kennke.xebece.ActionManager", "constructor",
                         ex);
        }

        return;
    }


    /**
     * Determines and instantiates an {@link Action} class for a specified
     * action command.
     *
     * @param cmd the action command.
     *
     * @return the action for the action command.
     *
     * @throws NoSuchActionException if there is no registered action for
     *         this action command.
     */
    public Action getAction(final String cmd) throws NoSuchActionException {

        String actionClassName = null;
        String[] cmdParts = cmd.split(":", 2);

        try {
            actionClassName = actions.getProperty(cmdParts[0]);
            Class actionClass = Class.forName(actionClassName);
            Action actionInstance = (Action) actionClass.newInstance();
            actionInstance.setModel(model);
            actionInstance.setView(view);
            actionInstance.setController(ctrl);
            actionInstance.setActionCommand(cmdParts[0]);
            if (cmdParts.length > 1) {
                actionInstance.setParameter(cmdParts[1]);
            }
            return actionInstance;

        } catch (ClassNotFoundException ex) {

            throw new NoSuchActionException("action class not found: "
                                            + actionClassName, ex);

        } catch (InstantiationException ex) {

            throw new NoSuchActionException(
                                    "action class could not be instantiated: "
                                    + actionClassName, ex);

        } catch (IllegalAccessException ex) {

            throw new NoSuchActionException(
                                    "action class could not be accessed: "
                                    + actionClassName, ex);

        }
    }
}
