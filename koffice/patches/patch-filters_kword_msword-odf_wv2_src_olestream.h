$NetBSD$

--- filters/kword/msword-odf/wv2/src/olestream.h.orig	2012-07-05 20:30:31.000000000 +0000
+++ filters/kword/msword-odf/wv2/src/olestream.h
@@ -23,7 +23,7 @@
 #include "global.h"  // U8,... typedefs
 #include <stack>
 
-#include <glib/giochannel.h> // GSeekType
+#include <glib.h> // GSeekType
 #include "wv2_export.h"
 
 namespace wvWare {
