# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.bincimap
PKG_SUPPORTED_OPTIONS=	ssl

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mssl)
.include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--with-ssl
CONFIGURE_ARGS+=	--with-openssl-include=${SSLBASE:Q}/include
CONFIGURE_ARGS+=	--with-openssl-lib=${SSLBASE:Q}/lib
.else
CONFIGURE_ARGS+=	--without-ssl
.endif
