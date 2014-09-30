# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-channels-${VERSION}
COMMENT=	Signal processing blocks to simulate channel models of gnuradio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=OFF
CMAKE_ARGS+=	-DENABLE_GR_CHANNELS=ON

.include	"../../mk/bsd.pkg.mk"
