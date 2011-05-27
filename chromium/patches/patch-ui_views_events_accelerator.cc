$NetBSD$

--- ui/views/events/accelerator.cc.orig	2011-05-24 08:01:59.000000000 +0000
+++ ui/views/events/accelerator.cc
@@ -6,7 +6,7 @@
 
 #if defined(OS_WIN)
 #include <windows.h>
-#elif defined(OS_LINUX)
+#elif defined(TOOLKIT_USES_GTK)
 #include <gdk/gdk.h>
 #endif
 
@@ -99,7 +99,7 @@ string16 GetShortcutTextForAccelerator(c
     else
       key = LOWORD(::MapVirtualKeyW(accelerator.GetKeyCode(), MAPVK_VK_TO_CHAR));
     shortcut += key;
-#elif defined(OS_LINUX)
+#elif defined(TOOLKIT_USES_GTK)
     const gchar* name = NULL;
     switch (accelerator.GetKeyCode()) {
       case ui::VKEY_OEM_2:
