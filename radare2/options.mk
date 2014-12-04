# $NetBSD: $

PKG_OPTIONS_VAR=		PKG_OPTIONS.radare2
PKG_SUPPORTED_OPTIONS=		ssl
PKG_SUGGESTED_OPTIONS=		ssl

.include "../../mk/bsd.options.mk"

# SSL support
.if !empty(PKG_OPTIONS:Mssl)
.  include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--with-openssl
.endif
