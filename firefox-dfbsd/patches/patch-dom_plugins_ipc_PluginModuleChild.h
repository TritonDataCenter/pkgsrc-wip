$NetBSD: patch-dom_plugins_ipc_PluginModuleChild.h,v 1.4 2016/06/16 12:08:21 ryoon Exp $

* Support Solaris

--- dom/plugins/ipc/PluginModuleChild.h.orig	2013-05-11 19:19:27.000000000 +0000
+++ dom/plugins/ipc/PluginModuleChild.h
@@ -325,7 +325,7 @@ private:
 
     // we get this from the plugin
     NP_PLUGINSHUTDOWN mShutdownFunc;
-#if defined(OS_LINUX) || defined(OS_BSD)
+#if defined(OS_LINUX) || defined(OS_BSD) || defined(OS_SOLARIS)
     NP_PLUGINUNIXINIT mInitializeFunc;
 #elif defined(OS_WIN) || defined(OS_MACOSX)
     NP_PLUGININIT mInitializeFunc;
