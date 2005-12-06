# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.netcat6
PKG_SUPPORTED_OPTIONS=	inet6

.include "../../mk/bsd.options.mk"

.if empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--disable-ipv6
.endif
