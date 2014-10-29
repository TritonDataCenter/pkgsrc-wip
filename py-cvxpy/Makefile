# $NetBSD$

DISTNAME=	cvxpy-0.2.15
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/c/cvxpy/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://github.com/cvxgrp/cvxpy/
COMMENT=	Python software for convex optimization
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../math/blas/buildlink3.mk"
.include "../../math/glpk/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
.include "../../math/lapack/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
