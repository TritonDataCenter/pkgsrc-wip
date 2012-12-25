# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.vimprobable2
PKG_SUPPORTED_OPTIONS=	debug

.include "../../mk/bsd.options.mk"

#
# Debug
#
.if !empty(PKG_OPTIONS:Mdebug)
SUBST_CLASSES+=		options
SUBST_STAGE.options=	pre-build
SUBST_MESSAGE.options=	Enable debugging.
SUBST_FILES.options=	Makefile
SUBST_SED.options+=	-e '/^V_DEBUG/ s/0/1/'
.endif
