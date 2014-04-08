$NetBSD$

Make HACKDIR externally configurable.

--- include/config.h.orig	2013-12-08 15:00:19.000000000 +0000
+++ include/config.h
@@ -225,7 +225,7 @@
  * otherwise it will be the current directory.
  */
 # ifndef HACKDIR
-#  define HACKDIR "/usr/games/lib/unnethackdir"
+#  define HACKDIR FILE_AREA_UNSHARE
 # endif
 
 /*
