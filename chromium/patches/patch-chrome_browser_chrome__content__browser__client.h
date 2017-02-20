$NetBSD$

--- chrome/browser/chrome_content_browser_client.h.orig	2017-02-02 02:02:48.000000000 +0000
+++ chrome/browser/chrome_content_browser_client.h
@@ -271,7 +271,7 @@ class ChromeContentBrowserClient : publi
       int child_process_id,
       content::FileDescriptorInfo* mappings,
       std::map<int, base::MemoryMappedFile::Region>* regions) override;
-#elif defined(OS_POSIX) && !defined(OS_MACOSX)
+#elif defined(OS_POSIX) && !defined(OS_MACOSX) && !defined(OS_BSD)
   void GetAdditionalMappedFilesForChildProcess(
       const base::CommandLine& command_line,
       int child_process_id,
