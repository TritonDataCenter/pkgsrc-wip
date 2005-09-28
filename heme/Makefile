# $NetBSD$
#

DISTNAME=		heme-0.4
CATEGORIES=		wip editors
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=heme/}

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://keihanna.dl.sourceforge.net/sourceforge/heme/
COMMENT=		Fast and portable console hex editor

BUILD_TARGET=		heme
USE_TOOLS+=		gmake

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/heme ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/heme.1 ${PREFIX}/man/man1

.include "../../mk/bsd.pkg.mk"
