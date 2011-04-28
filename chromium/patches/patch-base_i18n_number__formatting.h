$NetBSD$

--- base/i18n/number_formatting.h.orig	2011-04-13 08:01:34.000000000 +0000
+++ base/i18n/number_formatting.h
@@ -11,7 +11,7 @@
 
 namespace base {
 
-string16 FormatNumber(int64 number);
+string16 FormatNumber(int64_t number);
 
 }  // namespace base
 
