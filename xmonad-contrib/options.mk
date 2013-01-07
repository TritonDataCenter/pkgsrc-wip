# $NetBSD: options.mk, $

PKG_OPTIONS_VAR=    PKG_OPTIONS.xmonad-contrib
PKG_SUPPORTED_OPTIONS= X11-xft
PKG_SUGGESTED_OPTIONS= X11-xft

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:MX11-xft)
.include "../../wip/hs-x11-xft/buildlink3.mk"
.else
post-configure:
	${RUN} cd ${WRKSRC} && \
		${PATCH} <../../files/no_use_xft
.endif
