# $NetBSD: $

PKG_OPTIONS_VAR=	PKG_OPTIONS.atompaw
PKG_SUPPORTED_OPTIONS=	libxc linalg
PKG_SUGGESTED_OPTIONS=	libxc linalg

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mlibxc)
CONFIGURE_ARGS+=	--with-libxc-incs
CONFIGURE_ARGS+=	--with-libxc-libs
.include "../../wip/libxc/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mlinalg)
CONFIGURE_ARGS+=	--with-blas="-L${BUILDLINK_PREFIX.blas}/lib -lblas"
.include "../../math/blas/buildlink3.mk"
.include "../../math/lapack/buildlink3.mk"
.endif
