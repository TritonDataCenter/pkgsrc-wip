# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gfeedline
PKG_SUPPORTED_OPTIONS=	proxy spellcheck
PKG_SUGGESTED_OPTIONS=	# TODO

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mproxy)
DEPENDS+=	${PYPKGPREFIX}-libproxy-[0-9]*:../../net/py-libproxy
.endif

#gnome-sushi

.if !empty(PKG_OPTIONS:Mspellcheck)
# not tested yet
DEPENDS+=	${PYPKGPREFIX}-gtkspellcheck-[0-9]*:../..//py-gtkspellcheck
.endif
