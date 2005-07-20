# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.openct
PKG_SUPPORTED_OPTIONS=	pcsc-lite

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpcsc-lite)
.include "../../wip/pcsc-lite/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--with-pcsclite=no
.endif
