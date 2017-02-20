$NetBSD$

--- chrome/browser/extensions/activity_log/activity_log.cc.orig	2017-02-02 02:02:48.000000000 +0000
+++ chrome/browser/extensions/activity_log/activity_log.cc
@@ -48,7 +48,11 @@
 #include "extensions/common/extension.h"
 #include "extensions/common/extension_messages.h"
 #include "extensions/common/one_shot_event.h"
+#if defined(OS_BSD)
+#include <re2/re2.h>
+#else
 #include "third_party/re2/src/re2/re2.h"
+#endif
 #include "url/gurl.h"
 
 namespace constants = activity_log_constants;
