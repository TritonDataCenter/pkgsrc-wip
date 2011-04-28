$NetBSD$

--- chrome/plugin/webplugin_proxy.h.orig	2011-04-13 08:01:44.000000000 +0000
+++ chrome/plugin/webplugin_proxy.h
@@ -132,7 +132,7 @@ class WebPluginProxy : public webkit::np
                       const TransportDIB::Handle& windowless_buffer,
                       const TransportDIB::Handle& background_buffer,
                       bool transparent
-#if defined(OS_MACOSX)
+#if defined(OS_MACOSX) || defined(OS_BSD)
                       ,
                       int ack_key
 #endif
