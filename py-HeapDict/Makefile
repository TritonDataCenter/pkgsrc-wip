# $NetBSD$

DISTNAME=	HeapDict-1.0.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PYPI:=h/heapdict/}
PKGREVISION=	1

MAINTAINER=	matthewd@fastmail.us
HOMEPAGE=	https://github.com/DanielStutzbach/heapdict
COMMENT=	Heap with decrease-key and increase-key operations
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

TOOL_DEPENDS+=	${PYPKGPREFIX}-setuptools>=68.2:../../devel/py-setuptools
TOOL_DEPENDS+=	${PYPKGPREFIX}-wheel>=0:../../devel/py-wheel
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${PYTHONBIN} test_heap.py

.include "../../lang/python/wheel.mk"
.include "../../mk/bsd.pkg.mk"
