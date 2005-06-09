# $NetBSD$
#

DISTNAME=	${PKGNAME:C|-.*||}
PKGNAME=	topless-1.36
CATEGORIES=	sysutils
MASTER_SITES=	http://people.freebsd.org/~daichi/src/
EXTRACT_SUFX=	#defined

MAINTAINER=	obata@lins.jp
HOMEPAGE=	http://www.ongs.net/~daichi/#topless
COMMENT=	Display and update information of target command like 'top'

NO_CONFIGURE=	YES
NO_BUILD=	YES

DIST_SUBDIR=	${PKGNAME_NOREV}

do-extract:
do-install:
	${INSTALL_SCRIPT} ${DISTDIR}/${DIST_SUBDIR}/${DISTFILES} ${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
