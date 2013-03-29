# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.qt5-libs
PKG_SUPPORTED_OPTIONS=	openssl
PKG_SUGGESTED_OPTIONS+=	openssl

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mopenssl)
.include "../../security/openssl/buildlink3.mk"
.endif
