/**
 *  Copyright 2003, 2004, 2005 Roman Kennke
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
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import java.io.File;

import java.net.MalformedURLException;
import java.net.URL;

import java.util.Timer;
import java.util.TimerTask;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JComponent;

/**
 * Manages most of the logic of the systems. The ontographics application
 * consists of three main parts, the Controller (logic), the Context (data) and
 * the GUI (presentation). This is know as the Model-View-Controller
 * programming pattern.
 *
 * @author Roman Kennke
 * @version $Id$
 */
public class Actions implements Controller {


    /** The autosaving delay time in milliseconds. */
    private static final int AUTOSAVEDELAY = 60000;

    /** The action manager of the application. */
    private ActionManager actionManager;

    /** The view of the application. */
    private GUI view;

    /** The model of the application. */
    private Context model;


    /** Our logger. */
    private static final Logger log = Logger.getLogger("org.kennke.xebece");

    /** The timer for autosaving files. */
    private Timer timer;


    /** Creates a new Actions instance. This also creates the associated
     * {@link Context} and {@link View} instances.
     */
    public Actions() {
        return;
    }

    /**
     * Receives ActionEvents from GUI elements. Here the action command
     * is decoded into an {@link Action} instance and this Action is performed
     * in an extra Thread.
     *
     * @param ev the ActionEvent.
     */
    public void actionPerformed(final ActionEvent ev) {

        String cmd = ev.getActionCommand();
        triggerAction(cmd);
        return;
    }


    /**
     * Performs an {@link Action} with the specified action command.
     *
     * @param cmd the action command.
     */
    public void triggerAction(final String cmd) {

        try {
            Action action = actionManager.getAction(cmd);
            action.run();
        } catch (NoSuchActionException ex) {

            view.showErrorMessage(ex);
        }
    }

    /** Starts the Actions without initially loading a file. */
    public void start() {

        start(null);

        return;
    }


    /** Starts the controller and initially loads the file <code>file</code>.
     * @param file the file to load.
     */
    public void start(final File file) {

        // startup application
        //SplashScreen splashScreen = new SplashScreen();
        //splashScreen.show();

        // start auto-save time
        timer = new Timer(true);
        TimerTask task = new AutoSaveTimerTask();
        timer.schedule(task, AUTOSAVEDELAY, AUTOSAVEDELAY);


        model = new Context();
        view = createGUI();
        actionManager = new ActionManager(model, view, this);

        setupListeners();

        if (file == null) {
            triggerAction("file.new");
        } else {
            triggerAction("file.open_param:" + file.getAbsolutePath());
        }
        view.startGUI();
        //splashScreen.hide();
        //splashScreen.dispose();


        return;
    }


    /**
     * Starts the controller and initially loads the file <code>file</code>.
     *
     * @param baseUrl the URL from which to load the presentation
     *
     * @return a Swing component to use in presentations (i.e. Applets)
     */
    public JComponent startPresentation(final URL baseUrl) {
        try {
            model = new Context();
            view = new AppletGUI(model);
            actionManager = new ActionManager(model, view, this);
            JComponent mainPane = view.createMainPane();

            setupListeners();

            XebeceDocumentParser parser =
                new XebeceDocumentParser(model);
            URL treeUrl = new URL(baseUrl, "tree.xml");
            URL dataUrl = new URL(baseUrl, "ontodata.xml");

            XebeceDocument doc =
                parser.parseXebeceDocument(treeUrl, dataUrl);
            model.setDocument(doc);

            return mainPane;
        } catch (MalformedURLException ex) {
            log.log(Level.SEVERE, "Malformed URL", ex);
            return null;
        }
    }

    /**
     * Sets up all the listeners in the application.
     */
    private void setupListeners() {

        model.getDocument().addTreeChangeListener(view);

        view.addActionListener(this);

        model.addNodeSelectionChangeListener(view);

        if (view.getMainFrame() != null) {
            view.getMainFrame().addWindowListener
                (
                 new WindowAdapter() {
                     public final void windowClosing(final WindowEvent e) {
                         triggerAction("file.exit");
                     }
                 });
        }
        model.getDocument()
            .addImageSettingsChangeListener(view.getImageDisplay());

        model.addFileChangeListener(view);

        model.addUndoStateListener(view.getMenuBar());

        model.getSettings().getLastOpenedFiles()
            .addLastOpenedFilesListener(view.getMenuBar());

        model.getDocument().getViewConfiguration().
            addViewConfigurationListener(view.getViewConfiguration());
        model.getDocument().getViewConfiguration().
            addViewConfigurationListener(view.getMenuBar());
        model.getDocument().getViewConfiguration().
            addViewConfigurationListener(view);
        return;
    }


    /** Prints an error message to a given exception.
     * @param ex the exception to be printed.
     * @param ex
     */
    public void printError(final Throwable ex) {
        log.log(Level.SEVERE, "error", ex);
        return;
    }


    /**
     * Shuts down the application. Subcomponents are also notified by this
     * call.
     */
    public void shutdown() {
        if (timer != null) {
            timer.cancel();
        }
        view.shutdown();
        model.shutdown();

        Runtime.getRuntime().exit(0);
    }


    public Context getModel() {
        return model;
    }
    
    /** Responsible for auto-saving the data. **/
    class AutoSaveTimerTask extends TimerTask {

        /** Auto-saves the current document. */
        public final void run() {

            File homeDir = new File(System.getProperty("user.home"));
            File autosaveFile = new File(homeDir, "ontographics-auto.cal");
            triggerAction("file.autosave");
            view.setStatus("Auto-saving to: "
                           + autosaveFile.getAbsolutePath());

            return;
        }
    }
    
    public GUI createGUI() {
        return new SwingGUI(model);
    }
}
