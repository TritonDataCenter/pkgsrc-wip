$NetBSD$

Use system irrXML instead of bundled.

--- Src/Midi/Track.cpp.orig	2012-10-16 23:38:51.000000000 +0000
+++ Src/Midi/Track.cpp
@@ -41,7 +41,7 @@
 
 #include <wx/intl.h>
 #include <wx/utils.h>
-#include "irrXML/irrXML.h"
+#include <irrXML/irrXML.h>
 
 using namespace AriaMaestosa;
 
