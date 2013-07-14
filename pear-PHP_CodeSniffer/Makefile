# $NetBSD$

DISTNAME=	PHP_CodeSniffer-1.4.5
CATEGORIES=	devel

MAINTAINER=	noud4@home.nl
HOMEPAGE= 	http://www.squizlabs.com/php-codesniffer
COMMENT=	Detects PHP, JavaScript and CSS violations of coding standards
LICENSE=	modified-bsd

USE_TOOLS+=	gtar

do-extract:
	cd ${WRKDIR} && gtar xfpz ${DISTDIR}/pear/${DISTNAME}${EXTRACT_SUFX}

.include "../../lang/php/pear.mk"
.include "../../mk/bsd.pkg.mk"
