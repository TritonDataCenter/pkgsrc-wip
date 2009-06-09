# $NetBSD$

PKG_OPTIONS_VAR=                PKG_OPTIONS.tardy
PKG_SUPPORTED_OPTIONS=          testing
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.prefs.mk"

.include "../../mk/bsd.options.mk"

# Package-specific option-handling

###
### testing support
###
.if !empty(PKG_OPTIONS:Mtesting)
DEPENDS+=	gcpio:../../archivers/gcpio
.endif
