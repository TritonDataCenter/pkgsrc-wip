# $NetBSD$
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.JavaScript-SpiderMonkey
PKG_SUPPORTED_OPTIONS=	e4x
PKG_SUGGESTED_OPTIONS=	e4x

.include "../../mk/bsd.options.mk"

# E4X - ECMAScript for XML support
.if !empty(PKG_OPTIONS:Me4x)
MAKE_PARAMS+=	-E4X
.endif
