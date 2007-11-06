# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.texlive-bin
PKG_OPTIONS_REQUIRED_GROUPS=	xdvi-toolkit
PKG_OPTIONS_GROUP.xdvi-toolkit=	xaw # xaw3d motif neXtaw
PKG_SUPPORTED_OPTIONS=
PKG_SUGGESTED_OPTIONS=		xaw

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mxaw)
CONFIGURE_ARGS+=	--with-xdvi-x-toolkit=xaw
.endif
