# $NetBSD: Makefile,v 1.5 2014/01/25 10:38:22 thomasklausner Exp $

DISTNAME=	oasa-0.13.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	biology
MASTER_SITES=	http://bkchem.zirael.org/download/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://bkchem.zirael.org/download/
COMMENT=	Python library for manipulation of chemical formats
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-cairo-[0-9]*:../../graphics/py-cairo118

PYTHON_VERSIONS_ACCEPTED=	27

USE_LANGUAGES=	# none

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

.include "../../wip/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
