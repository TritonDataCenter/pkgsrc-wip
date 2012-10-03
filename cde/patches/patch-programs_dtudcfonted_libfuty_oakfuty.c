$NetBSD$

--- programs/dtudcfonted/libfuty/oakfuty.c.orig	2012-09-29 10:35:59.000000000 +0000
+++ programs/dtudcfonted/libfuty/oakfuty.c
@@ -190,7 +190,7 @@ struct ptobhead *head;
 	char  buf[BUFSIZE], *p;
 
 	pid_t	chld_pid = 0;
-#if defined( SVR4 ) || defined( SYSV ) || defined(__FreeBSD__)
+#if defined( SVR4 ) || defined( SYSV ) || defined(CSRG_BASED)
 	int	chld_stat ;
 #else
 	union	wait	chld_stat ;
