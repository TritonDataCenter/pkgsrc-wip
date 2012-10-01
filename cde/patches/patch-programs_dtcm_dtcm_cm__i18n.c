$NetBSD$

--- programs/dtcm/dtcm/cm_i18n.c.orig	2012-09-28 21:19:36.000000000 +0000
+++ programs/dtcm/dtcm/cm_i18n.c
@@ -388,7 +388,7 @@ cm_printf(double value, int decimal_pt)
 	}
 #ifdef SunOS
 	fconvert(value, decimal_pt, &deci_pt, &sign, buf);
-#elif defined(__FreeBSD__)
+#elif defined(CSRG_BASED)
 	snprintf(buf, decimal_pt, "%f", value);
 #else
 	/* this version, available on the HP and AIX machine is not reentrant. */
