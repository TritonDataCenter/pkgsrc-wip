$NetBSD: patch-toolkit_library_libxul.mk,v 1.4 2016/08/16 09:34:12 tnn Exp $

Can't do relocation against extern protected symbol (pkg/50767)
usr/bin/ld: ../../xpcom/components/nsComponentManager.o: relocation R_X86_64_PC32 against protected symbol `start_kPStaticModules_NSModule' can not be used when making a shared object

--- toolkit/library/libxul.mk.orig	2016-06-18 12:32:59.901404958 +0000
+++ toolkit/library/libxul.mk
@@ -55,7 +55,7 @@ endif
 ifdef _MSC_VER
 get_first_and_last = dumpbin -exports $1 | grep _NSModule@@ | sort -k 3 | sed -n 's/^.*?\([^@]*\)@@.*$$/\1/;1p;$$p'
 else
-get_first_and_last = $(TOOLCHAIN_PREFIX)nm -g $1 | grep _NSModule$$ | grep -vw refptr | sort | sed -n 's/^.* _*\([^ ]*\)$$/\1/;1p;$$p'
+get_first_and_last = $(TOOLCHAIN_PREFIX)nm $1 | grep _NSModule$$ | grep -vw refptr | sort | sed -n 's/^.* _*\([^ ]*\)$$/\1/;1p;$$p'
 endif
 
 LOCAL_CHECKS = test "$$($(get_first_and_last) | xargs echo)" != "start_kPStaticModules_NSModule end_kPStaticModules_NSModule" && echo "NSModules are not ordered appropriately" && exit 1 || exit 0
