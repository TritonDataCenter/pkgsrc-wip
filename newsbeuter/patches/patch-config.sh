$NetBSD$

Remove overly "smart" detection script for ncurses.  This doesn't work on NetBSD.
If libstfl is linked against the system-wide curses, you can't later link against
ncurses.  Newsbeuter can use the ncursesw compat offered by NetBSD 6.x native curses.

--- config.sh.orig	2014-07-25 09:01:09.000000000 +0200
+++ config.sh	2014-07-25 09:01:21.000000000 +0200
@@ -109,6 +109,8 @@
 
 if [ `uname -s` = "Darwin" ]; then
 	check_custom "ncurses5.4" "ncurses5.4-config" || fail "ncurses5.4"
+elif [ `uname -s` = "NetBSD" ]; then
+       echo "Assuming native NetBSD curses should be used"
 elif [ `uname -s` != "OpenBSD" ]; then
 	check_custom "ncursesw5" "ncursesw5-config" ||  fail "ncursesw"
 fi
