$NetBSD$

--- config.h.orig	2011-08-31 12:39:04.000000000 +0000
+++ config.h
@@ -13,8 +13,8 @@
 
 #ifdef SunOS
 #define DEFAULT_MAIL_COMMAND "/usr/bin/mailx"
-#define COMPRESS_COMMAND "/usr/local/bin/gzip"
-#define UNCOMPRESS_COMMAND "/usr/local/bin/gunzip"
+#define COMPRESS_COMMAND "/usr/bin/gzip"
+#define UNCOMPRESS_COMMAND "/usr/bin/gunzip"
 #define STATEFILE "/var/log/logrotate.status"
 #endif
 
