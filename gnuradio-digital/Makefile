# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-digital-${VERSION}
COMMENT=	Digital related algorithms for GNU Radio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=False
CMAKE_ARGS+=	-DENABLE_GR_DIGITAL=True

.include	"../../mk/bsd.pkg.mk"
