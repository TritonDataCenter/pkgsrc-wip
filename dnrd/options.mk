# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.dnrd
PKG_SUPPORTED_OPTIONS=	random-source-port pid-file tcp-support
PKG_SUGGESTED_OPTIONS=	pid-file

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mrandom-source-port)
CONFIGURE_ARGS+=	--enable-random-src
.endif

.if empty(PKG_OPTIONS:Mpid-file)
CONFIGURE_ARGS+=	--disable-pid-file
.endif

.if !empty(PKG_OPTIONS:Mtcp-support)
CONFIGURE_ARGS+=	--enable-tcp
.endif
