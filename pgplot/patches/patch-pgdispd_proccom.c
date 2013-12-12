$NetBSD$

Compiler was complaining about an extra definition

--- pgdispd/proccom.c.orig	1994-08-22 20:33:35.000000000 +0000
+++ pgdispd/proccom.c
@@ -163,7 +163,6 @@ int *retbuflen;	/* the length of retbuf
 	void drawline();	/* draw a line in the bitmap window */
 	Pixmap XCreatePixmap();
 
-	char *malloc();
 
 	if (!len & savedshorts)
 	{ /* an incomplete command was sent! */
