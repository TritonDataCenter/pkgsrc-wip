# $NetBSD: Makefile,v 1.84 2023/07/05 12:29:28 adam Exp $

DISTNAME=	Cython-0.29.36
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:}-legacy-${VERSION}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=C/Cython/}

MAINTAINER=	bacon@NetBSD.org
HOMEPAGE=	https://cython.org/
COMMENT=	C-Extensions for Python
LICENSE=	apache-1.1

REPLACE_PYTHON+=	Cython/Build/Cythonize.py
REPLACE_PYTHON+=	Cython/Debugger/Cygdb.py
REPLACE_PYTHON+=	Cython/Debugger/libpython.py
REPLACE_PYTHON+=	cython.py

USE_PKG_RESOURCES=	yes

do-test:
	cd ${WRKSRC} && ${PYTHONBIN} runtests.py

post-install:
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} cython cython0-${PYVERSSUFFIX} && \
	${MV} cythonize cythonize0-${PYVERSSUFFIX} && \
	${MV} cygdb cygdb0-${PYVERSSUFFIX} || ${TRUE}

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
# for test only
#.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
