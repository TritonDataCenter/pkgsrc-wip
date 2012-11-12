$NetBSD$

select() prototype.

--- unix/tx/TXDialog.h.orig	2006-05-15 16:56:20.000000000 +0000
+++ unix/tx/TXDialog.h
@@ -30,6 +30,7 @@
 
 #include "TXWindow.h"
 #include <errno.h>
+#include <sys/select.h>
 
 class TXDialog : public TXWindow, public TXDeleteWindowCallback {
 public:
