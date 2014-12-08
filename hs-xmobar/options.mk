# $NetBSD$

PKG_OPTIONS_VAR=    PKG_OPTIONS.hs-xmobar
PKG_SUPPORTED_OPTIONS= xft2 datezone
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mxft2)
CONFIGURE_ARGS+=    --flags="with_xft"
.include "../../x11/hs-X11-xft/buildlink3.mk"
.else
.endif

# Support for other timezones.
.if !empty(PKG_OPTIONS:Mdatezone)
CONFIGURE_ARGS+=    --flags="with_datezone"
.include "../../time/hs-timezone-olson/buildlink3.mk"
.include "../../time/hs-timezone-series/buildlink3.mk"
.else
.endif
