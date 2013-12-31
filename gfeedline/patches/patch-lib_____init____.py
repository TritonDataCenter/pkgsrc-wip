$NetBSD$

Use pkgsrc path.

--- lib/__init__.py.orig	2013-12-18 22:03:19.000000000 +0000
+++ lib/__init__.py
@@ -2,7 +2,7 @@ import gettext
 import locale
 from constants import APP_NAME
 
-LOCALE_DIR = '/usr/share/locale'
+LOCALE_DIR = '@PREFIX@/share/locale'
 
 for module in (gettext, locale):
     module.bindtextdomain(APP_NAME, LOCALE_DIR)
