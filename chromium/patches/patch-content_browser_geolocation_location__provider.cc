$NetBSD$

--- content/browser/geolocation/location_provider.cc.orig	2011-05-24 08:01:07.000000000 +0000
+++ content/browser/geolocation/location_provider.cc
@@ -56,7 +56,7 @@ void LocationProviderBase::UpdateListene
   }
 }
 
-#if !defined(OS_LINUX) && !defined(OS_MACOSX) && !defined(OS_WIN)
+#if !defined(OS_POSIX) && !defined(OS_WIN)
 LocationProviderBase* NewSystemLocationProvider() {
   return NULL;
 }
