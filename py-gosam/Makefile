# $NetBSD: Makefile,v 1.1 2014/10/06 23:08:58 jihbed Exp $

DISTNAME=	gosam-2.0.0-700
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	http://www.hepforge.org/archive/gosam/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://gosam.hepforge.org/
COMMENT=	Automated One-Loop matrix element generator
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-Tk-[0-9]*:../../x11/py-Tk

WRKSRC=		${WRKDIR}/${DISTNAME:S/-700//}

PYTHON_VERSIONS_ACCEPTED=	27 # as of 2.0.0-700

USE_LANGUAGES=	c c++

post-extract:
	${MV} ${WRKSRC}/src/python/golem/gosam-config.py \
			${WRKSRC}/src/python/golem/gosam-config.py${PYVERSSUFFIX}
	${MV} ${WRKSRC}/src/python/golem/gosam.py \
			${WRKSRC}/src/python/golem/gosam.py${PYVERSSUFFIX}

.include "../../wip/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
