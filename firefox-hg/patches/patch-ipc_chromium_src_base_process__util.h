$NetBSD: patch-ipc_chromium_src_base_process__util.h,v 1.4 2014/02/20 13:19:03 ryoon Exp $

--- ipc/chromium/src/base/process_util.h.orig	2014-09-28 08:30:05.000000000 +0000
+++ ipc/chromium/src/base/process_util.h
@@ -41,6 +41,9 @@
 typedef PROCESSENTRY32 ProcessEntry;
 typedef IO_COUNTERS IoCounters;
 #elif defined(OS_POSIX)
+#ifndef NAME_MAX
+#define NAME_MAX _POSIX_NAME_MAX
+#endif
 // TODO(port): we should not rely on a Win32 structure.
 struct ProcessEntry {
   int pid;
