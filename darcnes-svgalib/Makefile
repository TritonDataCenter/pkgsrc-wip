# $NetBSD: Makefile,v 1.18 2003/07/21 16:45:54 martti Exp $

PKGNAME=	darcnes-svgalib-20010401

MAINTAINER=	collver1@comcast.net
COMMENT=	Multi-system emulator, svgalib display

MAKE_ENV+=	TARGET=Linux_svgalib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sdarcnes ${PREFIX}/bin/darcnes-svgalib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/darcnes-svgalib
	${INSTALL_MAN} ${WRKSRC}/readme ${PREFIX}/share/doc/darcnes-svgalib

.include "../../emulators/darcnes/Makefile.common"
.include "../../wip/svgalib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
