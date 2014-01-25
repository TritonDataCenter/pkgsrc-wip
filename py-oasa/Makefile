# $NetBSD$

DISTNAME=	oasa-0.13.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	biology
MASTER_SITES=	http://bkchem.zirael.org/download/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://bkchem.zirael.org/download/
COMMENT=	Python library for manipulation of chemical formats
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes
PYTHON_VERSIONED_DEPENDENCIES=	cairo

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

.include "../../lang/python/versioned_dependencies.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
