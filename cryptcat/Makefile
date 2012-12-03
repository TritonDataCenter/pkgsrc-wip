# $NetBSD$
#

DISTNAME=	cryptcat-unix-1.2.1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptcat/}
EXTRACT_SUFX=	.tar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cryptcat.sourceforge.net/
COMMENT=	Standard netcat enhanced with twofish encryption
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake
WRKSRC=		${WRKDIR}/unix
BUILD_TARGET=	${LOWER_OPSYS}

INSTALLATION_DIRS+= 	bin share/doc/cryptcat

do-install:
	cd ${WRKSRC} && \
	${INSTALL_PROGRAM} cryptcat ${DESTDIR}${PREFIX}/bin && \
	${INSTALL_DATA} README ${DESTDIR}${PREFIX}/share/doc/cryptcat && \
	${INSTALL_DATA} README.cryptcat ${DESTDIR}${PREFIX}/share/doc/cryptcat && \
	${INSTALL_DATA} Credits ${DESTDIR}${PREFIX}/share/doc/cryptcat

.include "../../mk/bsd.pkg.mk"
