# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-fec-${VERSION}
COMMENT=	Forward Error Correction blocks, utilities, & examples of GNU Radio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=OFF
CMAKE_ARGS+=	-DENABLE_GR_FEC=ON

.include	"../../mk/bsd.pkg.mk"
