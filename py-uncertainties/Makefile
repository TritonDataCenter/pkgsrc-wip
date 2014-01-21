# $NetBSD$

DISTNAME=	uncertainties-2.4.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/u/uncertainties/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://packages.python.org/uncertainties/
COMMENT=	Support for physical quantities with units, based on numpy
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
