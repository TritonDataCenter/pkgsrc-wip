# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.quvi
PKG_SUPPORTED_OPTIONS+=	doc

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdoc)
BUILD_DEPENDS+=		doxygen>=1.4.7:../../devel/doxygen
CONFIGURE_ARGS+=	--with-doc=yes
PLIST.doc=		yes
.else
CONFIGURE_ARGS+=	--with-doc=no
.endif
