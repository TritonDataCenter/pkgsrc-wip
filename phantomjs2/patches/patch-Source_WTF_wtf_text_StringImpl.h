$NetBSD: patch-Source_WTF_wtf_text_StringImpl.h,v 1.1 2014/12/30 17:23:47 adam Exp $

--- src/qt/qtwebkit/Source/WTF/wtf/text/StringImpl.h.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/WTF/wtf/text/StringImpl.h
@@ -24,6 +24,7 @@
 #define StringImpl_h
 
 #include <limits.h>
+#include <unistd.h>
 #include <wtf/ASCIICType.h>
 #include <wtf/Forward.h>
 #include <wtf/StdLibExtras.h>
