# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.libpgf
PKG_SUPPORTED_OPTIONS=	doc

PLIST_VARS+=		doc

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdoc)
BUILD_DEPENDS+=		doxygen>=1.7.4:../../devel/doxygen
PLIST.doc=		yes
CONFIGURE_ARGS+=	--enable-doc
.endif
