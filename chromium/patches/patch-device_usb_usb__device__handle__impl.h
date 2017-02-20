$NetBSD$

--- device/usb/usb_device_handle_impl.h.orig	2017-02-02 02:02:54.000000000 +0000
+++ device/usb/usb_device_handle_impl.h
@@ -18,7 +18,12 @@
 #include "base/memory/ref_counted.h"
 #include "base/threading/thread_checker.h"
 #include "device/usb/usb_device_handle.h"
+#if defined(OS_FREEBSD)
+#include "libusb.h"
+#define LIBUSB_CALL
+#else
 #include "third_party/libusb/src/libusb/libusb.h"
+#endif
 
 namespace base {
 class SequencedTaskRunner;
