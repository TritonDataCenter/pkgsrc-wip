$NetBSD$

Use system irrXML instead of bundled.

--- Src/Midi/MagneticGrid.cpp.orig	2012-10-16 23:38:51.000000000 +0000
+++ Src/Midi/MagneticGrid.cpp
@@ -19,7 +19,7 @@
 #include "IO/IOUtils.h"
 
 #include "AriaCore.h"
-#include "irrXML/irrXML.h"
+#include <irrXML/irrXML.h>
 
 using namespace AriaMaestosa;
 
