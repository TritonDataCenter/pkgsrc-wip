# $NetBSD$

DISTNAME=	astroML-1.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_GITHUB:=astroML/}
GITHUB_PROJECT=	astroML
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.astroml.org/
COMMENT=	Astropy affiliated module for machine learning and data mining
LICENSE=	modified-bsd

PYTHON_VERSIONS_INCOMPATIBLE=	27

DEPENDS+=	${PYPKGPREFIX}-matplotlib>=2.1.1:../../graphics/py-matplotlib
DEPENDS+=	${PYPKGPREFIX}-scikit-learn>=0.18:../../math/py-scikit-learn
DEPENDS+=	${PYPKGPREFIX}-astropy>=4.2:../../wip/py-astropy4

.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
