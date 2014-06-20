# $NetBSD$

DISTNAME=	biofrills-0.3.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	biology python
MASTER_SITES=	https://pypi.python.org/packages/source/b/biofrills/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://github.com/etal/biofrills
COMMENT=	Bioinformatics utilities for molecular sequence analysis
LICENSE=	modified-bsd

PKG_OPTIONS_VAR=	PKG_OPTIONS.biofrills
PKG_SUPPORTED_OPTIONS=	cython

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mcython)
.include "../../devel/py-cython/buildlink3.mk"
.endif

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
