$NetBSD$

Use fsync.

--- src/mongo/util/mmap_posix.cpp.orig	2014-05-05 02:29:43.000000000 +0000
+++ src/mongo/util/mmap_posix.cpp
@@ -240,9 +240,9 @@ namespace mongo {
     void MemoryMappedFile::flush(bool sync) {
         if ( views.empty() || fd == 0 )
             return;
-        if ( msync(viewForFlushing(), len, sync ? MS_SYNC : MS_ASYNC) ) {
-            // msync failed, this is very bad
-            problem() << "msync failed: " << errnoWithDescription();
+        if ( fsync (fd) ) {
+            // fsync failed, this is very bad
+            problem() << "fsync failed: " << errnoWithDescription();
             dataSyncFailedHandler();
         }
     }
@@ -257,7 +257,7 @@ namespace mongo {
             if ( _view == NULL || _fd == 0 )
                 return;
 
-            if ( msync(_view, _len, MS_SYNC ) == 0 )
+            if ( fsync(_fd) == 0 )
                 return;
 
             if ( errno == EBADF ) {
