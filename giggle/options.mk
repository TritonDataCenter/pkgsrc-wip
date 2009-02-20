# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.giggle
PKG_SUPPORTED_OPTIONS=	evolution-data-server
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mevolution-data-server)
CONFIGURE_ARGS+=	--enable-evolution-data-server
.  include "../../mail/evolution-data-server/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-evolution-data-server
.endif
