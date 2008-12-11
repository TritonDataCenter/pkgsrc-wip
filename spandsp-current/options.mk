# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.spandsp
PKG_SUPPORTED_OPTIONS=	mmx sse

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmmx)
CONFIGURE_ARGS+=	--enable-mmx
.endif

.if !empty(PKG_OPTIONS:Msse)
CONFIGURE_ARGS+=	--enable-sse
.endif
