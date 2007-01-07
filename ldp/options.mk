# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.ldp
PKG_SUPPORTED_OPTIONS=	ayame

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mayame)
CFLAGS+=-DAYAME_STACK
.endif
