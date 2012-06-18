$NetBSD$

Needs free and malloc.

--- src/MOGL/MOGL_Peau.cpp.orig	2006-03-07 20:31:24.000000000 +0000
+++ src/MOGL/MOGL_Peau.cpp
@@ -21,6 +21,8 @@
  *****************************************************************************/
 #include "MOGL_Peau.h"
 
+#include <stdlib.h>
+
 MOGL_Peau::MOGL_Peau(): MOGL_Noeud(), _ModifieTriangle(true)
 {
 }
