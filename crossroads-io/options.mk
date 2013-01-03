# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.crossroads-io
PKG_SUPPORTED_OPTIONS=	debug doc
PKG_SUGGESTED_OPTIONS+=	doc
PLIST_VARS+=		doc

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
.endif

.if !empty(PKG_OPTIONS:Mdoc)
PLIST.doc=		yes
.else
CONFIGURE_ARGS+=	--without-documentation
.endif
