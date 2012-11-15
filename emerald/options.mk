# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.emerald
PKG_SUPPORTED_OPTIONS=	nls
PKG_SUGGESTED_OPTIONS+=	nls
PLIST_VARS+=		nls

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mnls)
.include "../../devel/gettext-lib/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-nls
PLIST.nls=		yes
.else
CONFIGURE_ARGS+=	--disable-nls
.endif
