$NetBSD$

Needs time_t type.

--- src/MOGL/MOGL_GenerateurParticule.h.orig	2006-03-07 20:31:24.000000000 +0000
+++ src/MOGL/MOGL_GenerateurParticule.h
@@ -23,6 +23,7 @@
 #define MOGL_GENERATEURPARTICULE
 
 #include <list>
+#include <sys/types.h>
 #include <sys/timeb.h>
 
 
