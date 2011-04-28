$NetBSD$

--- webkit/plugins/ppapi/ppb_flash_impl.h.orig	2011-04-13 08:01:07.000000000 +0000
+++ webkit/plugins/ppapi/ppb_flash_impl.h
@@ -33,7 +33,7 @@ class PPB_Flash_Impl {
                             uint32_t glyph_count,
                             const uint16_t glyph_indices[],
                             const PP_Point glyph_advances[])
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
       ;
 #else
       { return PP_FALSE; }
