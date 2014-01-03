# $NetBSD$

DISTNAME=	gevent-1.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	https://pypi.python.org/packages/source/g/gevent/
FETCH_USING=	curl

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://www.gevent.org/
COMMENT=	Python-gevent a coroutine-based Python networking library
LICENSE=	mit

USE_LANGUAGES=	c c++

PYDISTUTILSPKG= yes

do-test:
	${RUN} cd ${WRKSRC}/greentest; ${SETENV} ${TEST_ENV} ${PYTHONBIN} testrunner.py

BUILDLINK_API_DEPENDS.libevent+=	libevent>=0.6

.include "../../devel/py-cython/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../lang/python/egg.mk"
DEPENDS+=	${PYPKGPREFIX}-greenlet>=0.4.1:../../devel/py-greenlet
.include "../../mk/bsd.pkg.mk"
