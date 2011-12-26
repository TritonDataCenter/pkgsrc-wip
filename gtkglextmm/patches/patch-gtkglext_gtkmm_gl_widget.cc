$NetBSD$

Fixes "GdkSpanFunc is not declared" error.

--- gtkglext/gtkmm/gl/widget.cc.orig	2004-05-18 06:01:50.000000000 +0000
+++ gtkglext/gtkmm/gl/widget.cc
@@ -17,9 +17,8 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA.
  */
 
-#include <gtk/gtkglwidget.h>
-
 #include "widget.h"
+#include <gtk/gtkglwidget.h>
 
 namespace Gtk
 {
