$NetBSD$

Fix build with gcc4.5

--- src/app/mainWindow.cpp.orig	2009-05-29 23:10:16.000000000 +0000
+++ src/app/mainWindow.cpp
@@ -222,7 +222,7 @@ inline void MainWindow::slotComboScan()
 
 inline bool MainWindow::slotScanPath(const QString &path)
 {
-    return slotScanUrl(KUrl::KUrl(path));
+    return slotScanUrl(KUrl(path));
 }
 
 bool MainWindow::slotScanUrl(const KUrl &url)
