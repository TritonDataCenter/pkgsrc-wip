$NetBSD$

--- base/test/test_file_util_posix.cc.orig	2011-04-13 08:01:34.000000000 +0000
+++ base/test/test_file_util_posix.cc
@@ -101,7 +101,7 @@ bool CopyRecursiveDirNoCache(const FileP
   return success;
 }
 
-#if !defined(OS_LINUX) && !defined(OS_MACOSX)
+#if !defined(OS_POSIX)
 bool EvictFileFromSystemCache(const FilePath& file) {
   // There doesn't seem to be a POSIX way to cool the disk cache.
   NOTIMPLEMENTED();
