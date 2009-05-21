# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.pkgin
PKG_SUPPORTED_OPTIONS=	gzip-summary bzip2-summary
PKG_SUGGESTED_OPTIONS=	bzip2-summary

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgzip-summary)
CPPFLAGS+=	-DSUMEXT=\"gz\"
.endif

.if !empty(PKG_OPTIONS:Mbzip2-summary)
CPPFLAGS+=	-DSUMEXT=\"bz2\"
.endif
