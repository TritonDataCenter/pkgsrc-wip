# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.openbabel
PKG_SUPPORTED_OPTIONS=	wx-gui
PKG_SUGGESTED_OPTIONS=

PLIST_VARS+=		wx-gui

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mwx-gui)
.  include "../../x11/wxGTK28/buildlink3.mk"
CONFIGURE_ARGS+=		--enable-wx-gui
.endif
