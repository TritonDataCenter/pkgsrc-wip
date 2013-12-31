$NetBSD$

Returns true or false.

--- src/gtk/glx_3Demu.cpp.orig	2013-11-28 00:36:53.000000000 +0000
+++ src/gtk/glx_3Demu.cpp
@@ -31,7 +31,7 @@ static bool glx_init(void) { return true
 static GLXContext ctx;
 static GLXPbuffer pbuf;
 
-void deinit_glx_3Demu(void)
+int deinit_glx_3Demu(void)
 {
     Display *dpy = glXGetCurrentDisplay();
 
