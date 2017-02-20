$NetBSD$

--- content/browser/gpu/gpu_data_manager_impl_private.h.orig	2017-02-02 02:02:53.000000000 +0000
+++ content/browser/gpu/gpu_data_manager_impl_private.h
@@ -154,7 +154,7 @@ class CONTENT_EXPORT GpuDataManagerImplP
                            UnblockOtherDomainFrom3DAPIs);
   FRIEND_TEST_ALL_PREFIXES(GpuDataManagerImplPrivateTest,
                            UnblockThisDomainFrom3DAPIs);
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
   FRIEND_TEST_ALL_PREFIXES(GpuDataManagerImplPrivateTest,
                            SetGLStrings);
   FRIEND_TEST_ALL_PREFIXES(GpuDataManagerImplPrivateTest,
