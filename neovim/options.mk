# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.neovim
PKG_SUPPORTED_OPTIONS=	python jemalloc
PKG_SUGGESTED_OPTIONS=	python

.include "../../mk/bsd.options.mk"

###
### Support Python (add dependency)
###
.  if !empty(PKG_OPTIONS:Mpython)
DEPENDS+=       ${PYPKGPREFIX}-neovim:../../wip/py-neovim

.include "../../lang/python/pyversion.mk"
.  endif

###
### Use jemalloc for memory allocation
###
.  if !empty(PKG_OPTIONS:Mjemalloc)
.include "../../wip/jemalloc/buildlink3.mk"
.  endif
