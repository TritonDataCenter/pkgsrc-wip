# $NetBSD$
#

DISTNAME=		relaydb-1.7
CATEGORIES=		mail
MASTER_SITES=		http://www.benzedrine.cx/

MAINTAINER=		peter@pointless.nl
HOMEPAGE=		http://www.benzedrine.cx/relaydb.html
COMMENT=		Spam relay database

NO_CONFIGURE=		yes
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8 ${PKGMANDIR}/cat8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relaydb ${PREFIX}/bin/relaydb
	${INSTALL_MAN} ${WRKSRC}/relaydb.8 ${PREFIX}/${PKGMANDIR}/man8/relaydb.8
	${INSTALL_MAN} ${WRKSRC}/relaydb.cat8 ${PREFIX}/${PKGMANDIR}/cat8/relaydb.cat8

.include "../../mk/bsd.pkg.mk"
