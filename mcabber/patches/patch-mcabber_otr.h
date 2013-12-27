$NetBSD$

Fix libotr>=4 build.

--- mcabber/otr.h.orig	2012-12-02 13:27:32.000000000 +0000
+++ mcabber/otr.h
@@ -5,6 +5,9 @@
 
 #ifdef HAVE_LIBOTR
 
+#ifndef HAVE_LIBOTR3
+# include <libotr/instag.h>
+#endif
 #include <libotr/proto.h>
 #include <libotr/message.h>
 #include <libotr/privkey.h>
