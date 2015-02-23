# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.rng-tools
PKG_SUPPORTED_OPTIONS=	libgcrypt
PKG_SUGGESTED_OPTIONS+=	# blank

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mlibgcrypt)
.include "../../security/libgcrypt/buildlink3.mk"
CONFIGURE_ARGS+=	--with-libgcrypt
.else
CONFIGURE_ARGS+=	--without-libgcrypt
.endif
