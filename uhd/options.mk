# $NetBSD$
### Set options
PKG_OPTIONS_VAR=        PKG_OPTIONS.uhd
PKG_SUPPORTED_OPTIONS=  doxygen
PKG_SUGGESTED_OPTIONS=	doxygen

.include	"../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdoxygen)
DEPENDS+=		doxygen-[0-9]*:../../devel/doxygen
PLIST_SRC+=		${PKGDIR}/PLIST.doxygen
.endif
