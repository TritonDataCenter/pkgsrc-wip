# $NetBSD$
#

DISTNAME=		gtick-0.2.0
CATEGORIES=		audio
MASTER_SITES=		http://www.antcom.de/download/gtick/

MAINTAINER=		collver1@comcast.net
HOMEPAGE=		http://www.antcom.de/gtick/
COMMENT=		GTK+ metronome

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gtick ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/gtick.1x ${PREFIX}/man/man1/

.include "../../mk/bsd.pkg.mk"
