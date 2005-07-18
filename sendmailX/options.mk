# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.sendmailX
PKG_SUPPORTED_OPTIONS=	tls sasl2

.include "../../mk/bsd.options.mk"

###
### Use OpenSSL libraries for SMTP STARTTLS support
###
.if !empty(PKG_OPTIONS:Mtls)
.	include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-TLS
CFLAGS+=		-DSM_USE_TLS
.endif

###
### Use SASLv2 for SMTP AUTH
###
.if !empty(PKG_OPTIONS:Msasl2)
.	include "../../security/cyrus-sasl2/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-SASL
CFLAGS+=		-DSM_USE_SASL
.endif
