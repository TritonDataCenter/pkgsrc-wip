$NetBSD$

Fixes a compilation error by using ost::localtime_r instead of localtime_r

--- src/log.cpp.orig	2009-01-18 14:35:28.000000000 +0000
+++ src/log.cpp
@@ -161,7 +161,7 @@ void t_log::write_header(const string &f
 
 	gettimeofday(&t, NULL);
 	date = t.tv_sec;
-	localtime_r(&date, &tm);
+	ost::localtime_r(&date, &tm);
 
 	*log_stream << "+++ ";
 	*log_stream << tm.tm_mday;
