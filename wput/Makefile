# $NetBSD$
#

DISTNAME=	wput-0.6.1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wput/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://wput.sourceforge.net/
COMMENT=	Wput is a command-line ftp-client that looks like wget

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wput ${PREFIX}/bin/wput
	${INSTALL_MAN_DIR} ${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/wput.1 ${PREFIX}/${PKGMANDIR}/man1/wput.1

.include "../../mk/bsd.pkg.mk"
