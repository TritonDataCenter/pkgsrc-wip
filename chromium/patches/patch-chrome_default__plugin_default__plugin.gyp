$NetBSD$

--- chrome/default_plugin/default_plugin.gyp.orig	2011-04-13 08:01:59.000000000 +0000
+++ chrome/default_plugin/default_plugin.gyp
@@ -54,7 +54,7 @@
               'plugin_install_job_monitor.h',
             ],
          }],
-         ['OS=="linux"', {
+         ['OS=="linux" or OS=="dragonfly" or OS=="freebsd" or OS=="netbsd" or OS=="openbsd"', {
             'dependencies': [
               '<(DEPTH)/build/linux/system.gyp:gtk',
             ],
