# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.scummvm-nightly
PKG_SUPPORTED_OPTIONS=	scummvm-nightly-cruise scummvm-nightly-drascula
PKG_SUGGESTED_OPTIONS=	scummvm-nightly-cruise scummvm-nightly-drascula

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mscummvm-nightly-cruise)
CONFIGURE_ARGS+=--enable-cruise
.endif
.if !empty(PKG_OPTIONS:Mscummvm-nightly-drascula)
CONFIGURE_ARGS+=--enable-drascula
.endif
