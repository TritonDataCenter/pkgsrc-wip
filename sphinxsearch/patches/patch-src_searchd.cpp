$NetBSD$

Avoid hard-coded paths.

--- src/searchd.cpp.orig	2012-10-16 16:28:39.000000000 +0000
+++ src/searchd.cpp
@@ -14434,7 +14434,7 @@ void ShowHelp ()
 		"--safetrace\t\tonly use system backtrace() call in crash reports\n"
 		"\n"
 		"Examples:\n"
-		"searchd --config /usr/local/sphinx/etc/sphinx.conf\n"
+		"searchd --config @PKG_SYSCONFDIR@//sphinx.conf\n"
 #if USE_WINDOWS
 		"searchd --install --config c:\\sphinx\\sphinx.conf\n"
 #endif
