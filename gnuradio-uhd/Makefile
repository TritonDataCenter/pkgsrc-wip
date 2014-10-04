# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-uhd-${VERSION}
COMMENT=	Uhd-based encoding and decoding algorithms for GNU Radio

# (acutually, redundent for now)
PKG_OPTIONS.gnuradio=
.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=False
CMAKE_ARGS+=	-DENABLE_GR_UHD=True
CMAKE_ARGS+=	-DENABLE_PYTHON=True

CMAKE_ARGS+=	-DUHD_LIBRARIES=${PREFIX}/lib/libuhd.so
CMAKE_ARGS+=	-DUHD_INCLUDE_DIRS=${PREFIX}/include/uhd/usrp

.include	"../../ham/uhd/buildlink3.mk"

.include	"../../mk/bsd.pkg.mk"
