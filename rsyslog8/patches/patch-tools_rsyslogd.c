$NetBSD$

Need errno.h on NetBSD.
--- tools/rsyslogd.c.orig	2014-06-02 10:18:03.000000000 +0000
+++ tools/rsyslogd.c
@@ -26,7 +26,7 @@
 
 #include <signal.h>
 #include <liblogging/stdlog.h>
-#ifdef OS_SOLARIS
+#if defined(OS_SOLARIS) || defined(__NetBSD__)
 #	include <errno.h>
 #else
 #	include <sys/errno.h>
