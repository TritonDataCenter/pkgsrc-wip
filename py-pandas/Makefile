# $NetBSD$
#

DISTNAME=	pandas-0.3.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	http://pypi.python.org/packages/source/p/pandas/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://pandas.sourceforge.net/
COMMENT=	Pythonic cross-section, time series, and statistical analysis
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-dateutil>=1.5:../../time/py-dateutil

PKG_DESTDIR_SUPPORT=	user-destdir
PYDISTUTILSPKG=	yes

.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
