$NetBSD$

--- chrome/app/chrome_main_delegate.h.orig	2017-02-02 02:02:48.000000000 +0000
+++ chrome/app/chrome_main_delegate.h
@@ -44,7 +44,7 @@ class ChromeMainDelegate : public conten
       const std::string& process_type) override;
   bool ShouldSendMachPort(const std::string& process_type) override;
   bool DelaySandboxInitialization(const std::string& process_type) override;
-#elif defined(OS_POSIX) && !defined(OS_ANDROID)
+#elif defined(OS_POSIX) && !defined(OS_ANDROID) && !defined(OS_BSD)
   void ZygoteStarting(
       ScopedVector<content::ZygoteForkDelegate>* delegates) override;
   void ZygoteForked() override;
