# $NetBSD$
#

DISTNAME=		jep-2.24
PKGNAME=		java-jep-2.24
CATEGORIES=		math
MASTER_SITES=		http://www.singularsys.com/download/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.singularsys.com/jep/
COMMENT=		Java Mathematical Expression Parser

USE_BUILDLINK3=		yes

do-build:

do-install:
	${INSTALL_DATA} ${WRKSRC}/jep-2.24.jar \
		${PREFIX}/share/classpath/jep.jar

.include "../../mk/bsd.pkg.mk"
