# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gnucash
PKG_SUPPORTED_OPTIONS=	ofx

.include "../../mk/bsd.options.mk"

###
### Whether to build with the OFX importation module.
###

.if !empty(PKG_OPTIONS:Mofx)
.  include "../../finance/libofx/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-ofx
.endif
