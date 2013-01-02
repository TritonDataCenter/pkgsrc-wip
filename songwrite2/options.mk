# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.songwrite2
PKG_SUPPORTED_OPTIONS=	debug
PKG_SUGGESTED_OPTIONS+=	# blank

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdebug)
BUILD_OPTIONS+=		--debug
.endif
