# $NetBSD$
#

DISTNAME=	cvstrac-2.0.0
CATEGORIES=	devel www
MASTER_SITES=	http://www.cvstrac.org/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cvstrac.org/
COMMENT=	Web-Based Bug And Patch-Set Tracking System For CVS

pre-build:
	${CP} ${FILESDIR}/Makefile.in ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvstrac ${PREFIX}/bin

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
