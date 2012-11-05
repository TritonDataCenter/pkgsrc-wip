# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.dssi
PKG_SUPPORTED_OPTIONS=	qt
PKG_SUGGESTED_OPTIONS+=	# blank
PLIST_VARS+=		qt

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mqt)
.include "../../x11/qt4-libs/buildlink3.mk"
CONFIGURE_ENV+=         QTDIR=${QTDIR}
PLIST.qt=		yes
.endif
