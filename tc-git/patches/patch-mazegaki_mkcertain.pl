$NetBSD$

Interpreter fix

--- mazegaki/mkcertain.pl.orig	2011-04-14 14:10:06.000000000 +0000
+++ mazegaki/mkcertain.pl
@@ -1,4 +1,4 @@
-#!/usr/local/bin/perl5
+#!@PERL@
 use Term::Cap;
 use Term::Complete;
 
