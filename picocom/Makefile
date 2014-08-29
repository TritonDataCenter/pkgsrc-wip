# $NetBSD$

DISTNAME=	picocom-1.7
PKGREVISION=	1
CATEGORIES=	comms
MASTER_SITES=	http://picocom.googlecode.com/files/

MAINTAINER=	inittab@unixdev.net
HOMEPAGE=	https://code.google.com/p/picocom/
COMMENT=	Dumb Terminal Emulator
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		gmake
BUILD_TARGET=		picocom

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/picocom ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/picocom.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8

.include "../../mk/bsd.pkg.mk"
