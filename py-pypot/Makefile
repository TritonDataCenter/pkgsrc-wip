# $NetBSD$

DISTNAME=	pypot-4.0.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	comms python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pypot/}

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/poppy-project/pypot
COMMENT=	Python 3 Library for Robot Control
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-serial>=2.7:../../comms/py-serial
DEPENDS+=	${PYPKGPREFIX}-tornado>=5.1.1:../../www/py-tornado
DEPENDS+=	${PYPKGPREFIX}-scipy>=1.5.2:../../math/py-scipy
DEPENDS+=	wget>=1.21.1:../../net/wget
DEPENDS+=	${PYPKGPREFIX}-bottle>=0.12.19:../../www/py-bottle
DEPENDS+=	${PYPKGPREFIX}-requests>=2.25.1:../../devel/py-requests

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
