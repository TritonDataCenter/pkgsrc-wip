$NetBSD$

Use pkgsrc databases/db4.

--- src/db.h.orig	2014-04-05 03:59:47.000000000 +0000
+++ src/db.h
@@ -12,7 +12,7 @@
 #include <string>
 #include <vector>
 
-#include <db_cxx.h>
+#include <db4/db_cxx.h>
 
 class CAddress;
 class CAddrMan;
