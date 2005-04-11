# $NetBSD$
#

DISTNAME=		ipython-0.6.12
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		devel python
MASTER_SITES=		http://ipython.scipy.org/dist/

MAINTAINER=		sifu@0xx0.net
HOMEPAGE=		http://ipython.scipy.org/
COMMENT=		Interactive, enhanced Python shell

CONFLICTS=              py*-IPython-*

DEPENDS+=		${PYPKGPREFIX}-readline>=0:../../devel/py-readline

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
