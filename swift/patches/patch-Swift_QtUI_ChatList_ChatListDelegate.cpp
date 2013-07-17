$NetBSD$

Fix include paths to qt header files.

--- Swift/QtUI/ChatList/ChatListDelegate.cpp.orig	2011-04-22 21:07:47.000000000 +0000
+++ Swift/QtUI/ChatList/ChatListDelegate.cpp
@@ -4,8 +4,8 @@
  * See Documentation/Licenses/GPLv3.txt for more information.
  */
 
-#include <QPen>
-#include <QPainter>
+#include <QtGui/QPen>
+#include <QtGui/QPainter>
 
 #include "Swift/QtUI/ChatList/ChatListDelegate.h"
 #include "Swift/QtUI/Roster/GroupItemDelegate.h"
