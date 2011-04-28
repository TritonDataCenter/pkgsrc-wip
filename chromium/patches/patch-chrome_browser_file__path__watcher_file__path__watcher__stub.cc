$NetBSD$

--- chrome/browser/file_path_watcher/file_path_watcher_stub.cc.orig	2011-04-13 08:01:44.000000000 +0000
+++ chrome/browser/file_path_watcher/file_path_watcher_stub.cc
@@ -9,7 +9,7 @@
 
 class FilePathWatcherImpl : public FilePathWatcher::PlatformDelegate {
  public:
-  virtual bool Watch(const FilePath& path, FileWatcher::Delegate* delegate) {
+  virtual bool Watch(const FilePath& path, FilePathWatcher::Delegate* delegate) {
     return false;
   }
 };
