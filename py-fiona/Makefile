# $NetBSD: Makefile,v 1.2 2015/08/09 22:10:05 jihbed Exp $

DISTNAME=	Fiona-1.6.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
PKGREVISION=	8
CATEGORIES=	geography python
MASTER_SITES=	${MASTER_SITE_PYPI:=F/Fiona/}

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/Toblerity/Fiona
COMMENT=	Fiona reads and writes spatial data files
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-six>=1.9.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-cligj>=0.2.0:../../wip/py-cligj

USE_LANGUAGES=	c c++

.include "../../geography/gdal-lib/buildlink3.mk"
.include "../../devel/py-cython/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
