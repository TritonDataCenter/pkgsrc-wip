$NetBSD$

Substitute whoami for id across SunOS platforms.

--- deps/node_package/priv/base/env.sh.orig	2014-10-14 17:01:01.000000000 +0000
+++ deps/node_package/priv/base/env.sh
@@ -44,7 +44,11 @@ fi
 # Registered process to wait for to consider start a success
 WAIT_FOR_PROCESS={{runner_wait_process}}
 
-WHOAMI=`whoami`
+if [ `uname -s` = 'SunOS' ]; then
+    WHOAMI=$(/usr/xpg4/bin/id -un)
+else
+    WHOAMI=$(whoami)
+fi
 
 # Echo to stderr on errors
 echoerr() { echo "$@" 1>&2; }
