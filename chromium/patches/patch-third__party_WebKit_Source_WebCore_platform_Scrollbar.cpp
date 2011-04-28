$NetBSD$

--- third_party/WebKit/Source/WebCore/platform/Scrollbar.cpp.orig	2011-04-13 08:12:31.000000000 +0000
+++ third_party/WebKit/Source/WebCore/platform/Scrollbar.cpp
@@ -40,7 +40,7 @@
 
 using namespace std;
 
-#if (PLATFORM(CHROMIUM) && (OS(LINUX) || OS(FREEBSD))) || PLATFORM(GTK)
+#if (PLATFORM(CHROMIUM) && (OS(LINUX) || OS(BSD))) || PLATFORM(GTK)
 // The position of the scrollbar thumb affects the appearance of the steppers, so
 // when the thumb moves, we have to invalidate them for painting.
 #define THUMB_POSITION_AFFECTS_BUTTONS
