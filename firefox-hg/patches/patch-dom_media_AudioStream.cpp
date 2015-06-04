$NetBSD$

--- dom/media/AudioStream.cpp.orig	2015-06-04 12:35:48.000000000 +0000
+++ dom/media/AudioStream.cpp
@@ -15,7 +15,6 @@
 #include "mozilla/Snprintf.h"
 #include <algorithm>
 #include "mozilla/Telemetry.h"
-#include "soundtouch/SoundTouch.h"
 #include "Latency.h"
 #include "CubebUtils.h"
 #include "nsPrintfCString.h"
