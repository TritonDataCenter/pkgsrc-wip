# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.exact-image
PKG_SUPPORTED_OPTIONS=	viewer
# XXX: swig, lua, perl, php, python, ruby are optionally supported

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mviewer)
.include "../../graphics/evas/buildlink3.mk"
.include "../../graphics/evas-software-x11/buildlink3.mk"
# should add bin/edisplay to PLIST
.endif
