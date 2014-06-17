# $NetBSD$

DISTNAME=	chompack-2.0.0
PKGNAME=   	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/c/chompack/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://cvxopt.github.io/chompack/
COMMENT=	Library for chordal matrix computations
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-cvxopt>=1.1.7:../../wip/py-cvxopt

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
