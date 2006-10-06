# $NetBSD$

DISTNAME=		sic-0.3
CATEGORIES=		chat
MASTER_SITES=		http://www.shortest.de/download/


MAINTAINER=		kh.p@no-log.org
HOMEPAGE=		http://www.shortest.de/view/simple+irc+client
COMMENT=		Simple IRC client

NO_CONFIGURE=		yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sic.1 ${PREFIX}/man/man1

.include "../../mk/bsd.pkg.mk"
