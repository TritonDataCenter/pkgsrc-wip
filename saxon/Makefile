# $NetBSD: Makefile,v 1.21 2009/09/29 16:56:43 wiz Exp $
#

DISTNAME=	saxonhe9-2-1-1j
PKGNAME=	${DISTNAME:S/-/./g:S/he/-/}
CATEGORIES=	textproc
MASTER_SITES=	http://downloads.sourceforge.net/project/saxon/Saxon-HE/9.2/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://saxon.sourceforge.net/
COMMENT=	Michael H. Kay's Java XSLT processor
LICENSE=	mpl-1.1

WRKSRC=		${WRKDIR}
DIST_SUBDIR=	${PKGNAME_NOREV}
USE_JAVA=	run
NO_CONFIGURE=	yes
NO_BUILD=	yes

USE_TOOLS+=	pax

post-extract:
	chmod -R u+w,go-w ${WRKSRC}

INSTALLATION_DIRS= lib/java share/doc/saxon

do-install:
	${INSTALL_DATA} ${WRKSRC}/saxon9he.jar ${DESTDIR}${PREFIX}/lib/java/saxon.jar
	cd ${WRKSRC}/doc && pax -rw . ${DESTDIR}${PREFIX}/share/doc/saxon

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
