# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gobby
PKG_SUPPORTED_OPTIONS=	gnome
PKG_SUGGESTED_OPTIONS=	gnome

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgnome)
CONFIGURE_ARGS+=	--with-gnome
PLIST_SRC=		${PKGDIR}/PLIST.gnome
.endif
