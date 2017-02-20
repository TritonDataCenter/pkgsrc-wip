$NetBSD$

--- third_party/webrtc/base/httpcommon.cc.orig	2017-02-02 02:03:57.000000000 +0000
+++ third_party/webrtc/base/httpcommon.cc
@@ -384,7 +384,7 @@ bool HttpDateToSeconds(const std::string
     gmt = non_gmt + kTimeZoneOffsets[zindex] * 60 * 60;
   }
   // TODO: Android should support timezone, see b/2441195
-#if defined(WEBRTC_MAC) && !defined(WEBRTC_IOS) || defined(WEBRTC_ANDROID) || defined(BSD)
+#if defined(WEBRTC_MAC) && !defined(WEBRTC_IOS) || defined(WEBRTC_ANDROID) || defined(WEBRTC_BSD)
   tm *tm_for_timezone = localtime(&gmt);
   *seconds = gmt + tm_for_timezone->tm_gmtoff;
 #else
