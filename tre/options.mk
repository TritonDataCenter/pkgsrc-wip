# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.tre
PKG_SUPPORTED_OPTIONS=		agrep
PKG_SUGGESTED_OPTIONS=		agrep

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Magrep)
CONFIGURE_ARGS+=		--enable-agrep
PLIST_SRC+=			PLIST.agrep
.else
CONFIGURE_ARGS+=		--disable-agrep
.endif
