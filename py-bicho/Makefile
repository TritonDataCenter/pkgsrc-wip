# $NetBSD$

DISTNAME=	bicho_0.9
PKGNAME=	${PYPKGPREFIX}-bicho-0.9
CATEGORIES=	devel
MASTER_SITES=	https://github.com/downloads/MetricsGrimoire/Bicho/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/MetricsGrimoire/Bicho
COMMENT=	Bug tracking system tool analyzer
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-beautifulsoup4>=4.3.2:../../www/py-beautifulsoup4
DEPENDS+=	${PYPKGPREFIX}-storm>=0.20:../../wip/py-storm

PYTHON_VERSIONS_ACCEPTED=	27 # py-storm
USE_LANGUAGES=	# none
WRKSRC=		${WRKDIR}/${DISTNAME:S/_/-/}

post-extract:
	${MV} ${WRKSRC}/bin/bicho ${WRKSRC}/bin/bicho${PYVERSSUFFIX}

.include "../../wip/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
