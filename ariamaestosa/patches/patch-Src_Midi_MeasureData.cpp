$NetBSD$

Use system irrXML instead of bundled.

--- Src/Midi/MeasureData.cpp.orig	2012-10-16 23:38:51.000000000 +0000
+++ Src/Midi/MeasureData.cpp
@@ -22,7 +22,7 @@
 #include "Midi/TimeSigChange.h"
 
 #include <iostream>
-#include "irrXML/irrXML.h"
+#include <irrXML/irrXML.h>
 
 using namespace AriaMaestosa;
 
