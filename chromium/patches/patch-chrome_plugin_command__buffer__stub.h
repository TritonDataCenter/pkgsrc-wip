$NetBSD$

--- chrome/plugin/command_buffer_stub.h.orig	2011-04-13 08:01:44.000000000 +0000
+++ chrome/plugin/command_buffer_stub.h
@@ -62,7 +62,7 @@ class CommandBufferStub : public IPC::Ch
   bool InitializePlatformSpecific();
   void DestroyPlatformSpecific();
 
-#if defined(OS_MACOSX)
+#if defined(OS_MACOSX) || defined(OS_BSD)
   void OnSetWindowSize(const gfx::Size& size);
   void SwapBuffersCallback();
   void AllocTransportDIB(const size_t size, TransportDIB::Handle* dib_handle);
