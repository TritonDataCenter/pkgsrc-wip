# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.pkgin
PKG_SUPPORTED_OPTIONS=	gzip-summary
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

# by default, pkg_summary extention is set to bz2
.if !empty(PKG_OPTIONS:Mgzip-summary)
CPPFLAGS+=	-DSUMEXT=\"gz\"
.endif
