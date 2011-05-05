$NetBSD$

--- Rotated.C.orig	2009-01-09 11:18:03.000000000 +0000
+++ Rotated.C
@@ -232,6 +232,7 @@ void XRotUnloadFont(Display *dpy, int sc
   int ichar;
 
   XFreeFontSet(dpy, rotfont->xfontset);
+  XFreeFont(dpy, rotfont->xfontstruct);
 
   /* rotfont should never be referenced again ... */
   free((char *)rotfont->name);
