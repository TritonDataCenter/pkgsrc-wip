$NetBSD$

Fix build on SunOS.
--- src/include/parser/stringinfo.h.orig	2015-04-08 07:28:03.000000000 +0000
+++ src/include/parser/stringinfo.h
@@ -19,6 +19,7 @@
 #define STRINGINFO_H
 
 #include <stdio.h>
+#include <stdarg.h>
 #include "pg_config_manual.h"
 
 /* port.h */
