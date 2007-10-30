# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.scummvm-nightly
PKG_SUPPORTED_OPTIONS=	scummvm-nightly-cruise
PKG_SUPPORTED_OPTIONS+=	scummvm-nightly-drascula
PKG_SUPPORTED_OPTIONS+=	scummvm-nightly-igor
PKG_SUGGESTED_OPTIONS=	${PKG_SUPPORTED_OPTIONS}

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mscummvm-nightly-cruise)
CONFIGURE_ARGS+=--enable-cruise
.endif
.if !empty(PKG_OPTIONS:Mscummvm-nightly-drascula)
CONFIGURE_ARGS+=--enable-drascula
.endif
.if !empty(PKG_OPTIONS:Mscummvm-nightly-igor)
CONFIGURE_ARGS+=--enable-igor
.endif
