# $NetBSD$

DISTNAME=	pykit-sci-0.1.8
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	https://pypi.python.org/packages/source/p/pykit-sci/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://github.com/androomerrill/pykit-sci
COMMENT=	Collection of python modules for science
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy
DEPENDS+=	${PYPKGPREFIX}-pint>=0.5:../../wip/py-pint

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.1.8

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
