$NetBSD$

Don't build webkit dependent parts even if webkit detected.

--- src/assistant/assistant/assistant.pro.orig	2017-06-23 12:03:39.000000000 +0000
+++ src/assistant/assistant/assistant.pro
@@ -1,8 +1,8 @@
-qtHaveModule(webkitwidgets):!contains(QT_CONFIG, static) {
-    BROWSER = qtwebkit
-} else {
+#qtHaveModule(webkitwidgets):!contains(QT_CONFIG, static) {
+#    BROWSER = qtwebkit
+#} else {
     BROWSER = qtextbrowser
-}
+#}
 
 QT += widgets network help sql help
 qtHaveModule(printsupport): QT += printsupport
