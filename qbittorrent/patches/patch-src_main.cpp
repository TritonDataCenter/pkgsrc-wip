$NetBSD$

Don't use execinfo on NetBSD.

--- src/main.cpp.orig	2013-11-19 22:55:00.000000000 +0000
+++ src/main.cpp
@@ -61,7 +61,9 @@ Q_IMPORT_PLUGIN(qico)
 #include "qinisettings.h"
 #if defined(Q_WS_X11) || defined(Q_WS_MAC)
 #include <signal.h>
+#if !defined(Q_OS_NETBSD)
 #include <execinfo.h>
+#endif
 #include "stacktrace.h"
 #endif
 
