$NetBSD$

Use system irrXML instead of bundled.

--- Src/Pickers/MagneticGridPicker.cpp.orig	2012-10-16 23:38:51.000000000 +0000
+++ Src/Pickers/MagneticGridPicker.cpp
@@ -21,7 +21,7 @@
 #include "IO/IOUtils.h"
 
 #include "AriaCore.h"
-#include "irrXML/irrXML.h"
+#include <irrXML/irrXML.h>
 
 using namespace AriaMaestosa;
 
