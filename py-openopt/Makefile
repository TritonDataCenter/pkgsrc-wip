# $NetBSD$
#

VERSION=	0.31
DISTNAME=	OpenOpt
EGG_NAME=	openopt-${VERSION}
PKGNAME=	${PYPKGPREFIX}-${EGG_NAME}
CATEGORIES=	math python
MASTER_SITES=	http://openopt.org/images/3/33/
EXTRACT_SUFX=	.zip

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://openopt.org/Welcome
COMMENT=	Python module for numerical optimization
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	fortran
PYTHON_VERSIONS_ACCEPTED= 26 25

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
