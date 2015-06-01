# $NetBSD$

DISTNAME=	billiard-3.3.0.20
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	https://pypi.python.org/packages/source/b/billiard/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://github.com/celery/billiard
COMMENT=	Python multiprocessing fork with improvements and bugfixes
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-nose>=1.3.4:../../devel/py-nose

PYTHON_VERSIONS_ACCEPTED= 34 33 27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
