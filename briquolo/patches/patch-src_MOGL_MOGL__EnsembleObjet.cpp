$NetBSD$

Needs strncpy and strncmp.

--- src/MOGL/MOGL_EnsembleObjet.cpp.orig	2008-03-24 13:12:36.000000000 +0000
+++ src/MOGL/MOGL_EnsembleObjet.cpp
@@ -28,6 +28,8 @@
 
 //#include <mmsystem.h>
 
+#include <string.h>
+
 MOGL_EnsembleObjet::MOGL_EnsembleObjet()
 {
 }
