$NetBSD: patch-src_mesa_drivers_dri_i915_intel__screen.c,v 1.2 2015/06/07 15:48:12 tnn Exp $

Move sys/sysctl.h include because on NetBSD, sysctl.h includes sys/param.h,
and sys/param.h defines a one argument ALIGN.  Allows mesa to redefine
to a two argument ALIGN.

Fix build on older NetBSD w/o _SC_PHYS_PAGES.

--- src/mesa/drivers/dri/i915/intel_screen.c.orig	2017-02-13 11:55:49.000000000 +0000
+++ src/mesa/drivers/dri/i915/intel_screen.c
@@ -28,6 +28,11 @@
 #include <errno.h>
 #include <time.h>
 #include <unistd.h>
+
+#ifdef HAVE_SYS_SYSCTL_H
+# include <sys/sysctl.h>
+#endif
+
 #include "main/glheader.h"
 #include "main/context.h"
 #include "main/framebuffer.h"
@@ -730,6 +735,13 @@ i915_query_renderer_integer(__DRIscreen
       const unsigned gpu_mappable_megabytes =
          (aper_size / (1024 * 1024)) * 3 / 4;
 
+#if defined(HW_PHYSMEM64)
+      int mib[2] = { CTL_HW, HW_PHYSMEM64 };
+      uint64_t system_memory_bytes;
+      size_t len = sizeof(system_memory_bytes);
+      if (sysctl(mib, 2, &system_memory_bytes, &len, NULL, 0) != 0)
+         return -1;
+#else
       const long system_memory_pages = sysconf(_SC_PHYS_PAGES);
       const long system_page_size = sysconf(_SC_PAGE_SIZE);
 
@@ -738,6 +750,7 @@ i915_query_renderer_integer(__DRIscreen
 
       const uint64_t system_memory_bytes = (uint64_t) system_memory_pages
          * (uint64_t) system_page_size;
+#endif
 
       const unsigned system_memory_megabytes =
          (unsigned) (system_memory_bytes / (1024 * 1024));
