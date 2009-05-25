# $NetBSD$

PKG_OPTIONS_VAR =	PKG_OPTIONS.ldtp
PKG_SUPPORTED_OPTIONS=	pystatgrab pyimaging
PKG_SUGGESTED_OPTIONS=	pyimaging

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	${PKG_SUPPORTED_OPTIONS}

.if !empty(PKG_OPTIONS:Mpyimaging)
.include "../../graphics/py-imaging/buildlink3.mk"
.endif
