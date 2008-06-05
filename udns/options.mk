# $NetBSD: options.mk,v 1.18 2007/08/26 09:10:54 xtraeme Exp $
#

PKG_OPTIONS_VAR=		PKG_OPTIONS.udns
PKG_SUPPORTED_OPTIONS+=		inet6
PKG_SUGGESTED_OPTIONS=		inet6

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--enable-ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif
