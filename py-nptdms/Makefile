# $NetBSD$

DISTNAME=	npTDMS-0.6.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/n/npTDMS/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/adamreeve/npTDMS
COMMENT=	NumPy based module for reading TDMS files produced by LabView
LICENSE=	gnu-lgpl-v3

WRKSRC=		${WRKDIR}/npTDMS-0.6.4

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED= 34 33 27

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
