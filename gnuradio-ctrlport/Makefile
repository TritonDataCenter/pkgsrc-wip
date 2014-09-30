# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-ctrlport-${VERSION}
COMMENT=	New set of hooks into GNU Radio to allow a remote client to attach
.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=False
CMAKE_ARGS+=	-DENABLE_GR_CTRLPORT=True

.include	"../../mk/bsd.pkg.mk"
