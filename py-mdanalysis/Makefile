# $NetBSD$

DISTNAME=	MDAnalysis-0.8.0rc4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	biology
MASTER_SITES=	http://mdanalysis.googlecode.com/files/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://code.google.com/p/mdanalysis/
COMMENT=   Library to analyze and manipulate molecular dynamics trajectories
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c c++

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
DEPENDS+=	${PYPKGPREFIX}-biopython>=1.63:../../wip/biopython
.include "../../mk/bsd.pkg.mk"
