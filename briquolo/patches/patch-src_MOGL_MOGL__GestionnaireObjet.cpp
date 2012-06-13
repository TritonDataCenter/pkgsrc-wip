$NetBSD$

Needs strncpy and strncmp.

--- src/MOGL/MOGL_GestionnaireObjet.cpp.orig	2008-03-24 12:56:13.000000000 +0000
+++ src/MOGL/MOGL_GestionnaireObjet.cpp
@@ -22,6 +22,8 @@
 #include "../I18n.h"
 #include "MOGL_GestionnaireObjet.h"
 
+#include <string.h>
+
 bool MOGL_GestionnaireObjet::ChargerObjetASCTriangle(const char * p_NomFichier, const MOGL_GestionnaireTexture & p_GM,
                                                      MOGL_Objet & p_Objet)
 {
