# $NetBSD$

DISTNAME=	pfstat-1.7
CATEGORIES=	sysutils net
MASTER_SITES=	http://www.benzedrine.cx/

MAINTAINER=	peter@pointless.nl
HOMEPAGE=	http://www.benzedrine.cx/pfstat.html
COMMENT=	Utility to render graphical statistics for PF

BUILD_DEPENDS+=	pf-lkm-[0-9]*:../../wip/pflkm

DEPENDS+=	gd-[0-9]*:../../graphics/gd
DEPENDS+=	freetype-lib-[0-9]*:../../graphics/freetype-lib

NO_CONFIGURE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfstat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstat.8 ${PREFIX}/man/man8

.include "../../mk/bsd.pkg.mk"
