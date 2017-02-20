$NetBSD$

--- media/audio/audio_manager.cc.orig	2017-02-02 02:02:55.000000000 +0000
+++ media/audio/audio_manager.cc
@@ -95,7 +95,7 @@ class AudioManagerHelper : public base::
   }
 #endif
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
   void set_app_name(const std::string& app_name) { app_name_ = app_name; }
   const std::string& app_name() const { return app_name_; }
 #endif
@@ -253,7 +253,7 @@ class AudioManagerHelper : public base::
   std::unique_ptr<base::win::ScopedCOMInitializer> com_initializer_for_testing_;
 #endif
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
   std::string app_name_;
 #endif
 
@@ -365,7 +365,7 @@ void AudioManager::EnableCrashKeyLogging
   g_helper.Pointer()->enable_crash_key_logging();
 }
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
 // static
 void AudioManager::SetGlobalAppName(const std::string& app_name) {
   g_helper.Pointer()->set_app_name(app_name);
