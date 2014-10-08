# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-wavelet-${VERSION}
COMMENT=	Wavelet transform of GNU Radio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=False
CMAKE_ARGS+=	-DENABLE_GR_WAVELET=True

.include	"../../math/gsl/buildlink3.mk"
.include	"../../mk/bsd.pkg.mk"
