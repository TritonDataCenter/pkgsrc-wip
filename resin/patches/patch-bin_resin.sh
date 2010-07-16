$NetBSD$

--- bin/resin.sh.orig	2010-07-01 14:40:44.000000000 +0000
+++ bin/resin.sh
@@ -39,4 +39,4 @@ if test -z "${RESIN_HOME}"; then
   RESIN_HOME="$bin/.."
 fi  
 
-exec $JAVA_EXE -jar ${RESIN_HOME}/lib/resin.jar $*
+exec $JAVA_EXE -Djava.library.path=${RESIN_HOME}/libexec -jar ${RESIN_HOME}/lib/resin.jar $*
