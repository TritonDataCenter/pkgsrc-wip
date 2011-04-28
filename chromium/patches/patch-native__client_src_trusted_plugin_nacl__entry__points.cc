$NetBSD$

--- native_client/src/trusted/plugin/nacl_entry_points.cc.orig	2011-04-13 08:13:07.000000000 +0000
+++ native_client/src/trusted/plugin/nacl_entry_points.cc
@@ -76,7 +76,7 @@ NPError API_CALL NaCl_NP_Shutdown() {
 
 static void RegisterCommon() {
   NPAPI::PluginEntryPoints entry_points = {
-#if !defined(OS_LINUX)
+#if NACL_WINDOWS || NACL_OSX
     NaCl_NP_GetEntryPoints,
 #endif
     NaCl_NP_Initialize,
