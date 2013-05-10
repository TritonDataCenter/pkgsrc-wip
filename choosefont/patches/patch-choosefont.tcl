$NetBSD$
# Since tk-Tix-8.4.3 tcl scipt must include Tix
--- choosefont.tcl.orig	2013-05-10 06:28:23.000000000 +0000
+++ choosefont.tcl
@@ -5,6 +5,7 @@
 #                         <jan.keirse@pandora.be>			       #
 #									       #
 ################################################################################
+package require Tix
 
 # Restart in tixwish if necessary \
 exec tixwish "$0" "$@"
