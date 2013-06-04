# $NetBSD$

DISTNAME=	guppy-0.1.9
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	http://pypi.python.org/packages/source/g/guppy/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://guppy-pe.sourceforge.net/
COMMENT=	Guppy-PE -- A Python Programming Environment
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-Tk-[0-9]*:../../x11/py-Tk

WRKSRC=	${WRKDIR}/guppy-0.1.9
PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
