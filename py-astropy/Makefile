# $NetBSD$

DISTNAME=	astropy-0.2.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	http://pypi.python.org/packages/source/a/astropy/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://www.astropy.org/
COMMENT=	Community-developed python astronomy tools
#LICENSE=	# TODO: (see mk/license.mk)

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	cextern/wcslib/wcslib.pc.in
PKGCONFIG_OVERRIDE+=	cextern/expat/expat.pc.in

.include "../../devel/py-cython/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
