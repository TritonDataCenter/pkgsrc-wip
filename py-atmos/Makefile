# $NetBSD$

DISTNAME=	atmos-0.2.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	https://pypi.python.org/packages/source/a/atmos/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://pypi.python.org/packages/source/a/atmos/
COMMENT=	Atmospheric sciences utility library
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-six>=1.9.0:../../lang/py-six

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../math/py-numexpr/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
