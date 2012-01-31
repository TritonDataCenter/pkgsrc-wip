$NetBSD$

--- src/searchd.cpp.orig	2011-04-21 18:16:02.000000000 +0000
+++ src/searchd.cpp
@@ -13134,7 +13134,7 @@ void ShowHelp ()
 #endif
 		"\n"
 		"Examples:\n"
-		"searchd --config /usr/local/sphinx/etc/sphinx.conf\n"
+		"searchd --config @PKG_SYSCONFDIR@/sphinx.conf\n"
 #if USE_WINDOWS
 		"searchd --install --config c:\\sphinx\\sphinx.conf\n"
 #endif
