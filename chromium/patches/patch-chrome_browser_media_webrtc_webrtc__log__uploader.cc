$NetBSD$

--- chrome/browser/media/webrtc/webrtc_log_uploader.cc.orig	2017-02-02 02:02:49.000000000 +0000
+++ chrome/browser/media/webrtc/webrtc_log_uploader.cc
@@ -344,6 +344,10 @@ void WebRtcLogUploader::SetupMultipart(
   const char product[] = "Chrome_Android";
 #elif defined(OS_CHROMEOS)
   const char product[] = "Chrome_ChromeOS";
+#elif defined(OS_FREEBSD)
+  const char product[] = "Chrome_FreeBSD";
+#elif defined(OS_NETBSD)
+  const char product[] = "Chrome_NetBSD";
 #else
 #error Platform not supported.
 #endif
