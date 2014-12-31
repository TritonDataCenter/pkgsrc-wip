# $NetBSD$

DISTNAME=	myFitter-python-0.1.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/-python//:tl}
CATEGORIES=	math python
MASTER_SITES=	http://www.hepforge.org/archive/myfitter/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://myfitter.hepforge.org/
COMMENT=	Maximum Likelihood Fits in Python
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.1.3

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
