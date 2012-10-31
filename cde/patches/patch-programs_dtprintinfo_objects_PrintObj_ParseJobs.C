$NetBSD$

--- programs/dtprintinfo/objects/PrintObj/ParseJobs.C.orig	2012-09-29 12:08:10.000000000 +0000
+++ programs/dtprintinfo/objects/PrintObj/ParseJobs.C
@@ -870,7 +870,7 @@ void LocalPrintJobs(char *printer, char 
 #if defined(__osf__)
    sprintf(buf, "lpstat -o%s", printer);
 #endif
-#if defined(linux) || defined(__OpenBSD__)
+#if defined(linux) || defined(__OpenBSD__) || defined(__NetBSD__)
    snprintf(buf, 1000, "lpq -P%s", printer);
 #elif defined(__FreeBSD__)
    snprintf(buf, 1000, "/usr/local/bin/lpq -P%s", printer);
