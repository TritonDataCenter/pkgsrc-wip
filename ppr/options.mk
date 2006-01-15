# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.tiff
PKG_SUPPORTED_OPTIONS=	netpbm
PKG_DEFAULT_OPTIONS=	netpbm
.include "../../mk/bsd.options.mk"

###
### Create filters using netpbm?
###
.if !empty(PKG_OPTIONS:Mnetpbm)
.include "../../graphics/netpbm/buildlink3.mk"
.endif
