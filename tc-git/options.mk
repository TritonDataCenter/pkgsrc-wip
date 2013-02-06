# $NetBSD$

PKG_OPTIONS_VAR=        PKG_OPTIONS.tc
PKG_SUPPORTED_OPTIONS=  enable-symbol-rev
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Menable-symbol-rev)
# enable symbol.rev to be included in bushu.rev
# This will get, for example,  upper arrow with UE(up) + YA(arrow)
CONFIGURE_ARGS+=        --enable-symbol-rev
.endif
