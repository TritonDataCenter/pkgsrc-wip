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

public abstract class AbstractAction implements Action {

    private String actionCommand;

    private GUI view;

    private Context model;

    private Controller controller;

    private String parameter;

    public void setActionCommand(String _actionCommand) {
        actionCommand = _actionCommand;
        return;
    }

    public String getActionCommand() {
        return actionCommand;
    }

    public void setModel(Context _model) {
        model = _model;
        return;
    }

    public Context getModel() {
        return model;
    }

    public void setView(GUI _view) {
        view = _view;
        return;
    }

    public GUI getView() {
        return view;
    }

    public void setController(Controller _controller) {
        controller = _controller;
        return;
    }

    public Controller getController() {
        return controller;
    }

    public String getParameter() {
        return parameter;
    }

    public void setParameter(String _parameter) {
        parameter = _parameter;
    }
}
