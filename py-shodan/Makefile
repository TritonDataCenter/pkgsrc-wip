# $NetBSD: Makefile,v 1.13 2023/06/06 12:42:49 riastradh Exp $

DISTNAME=	shodan-1.29.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=s/shodan/}

MAINTAINER=	leot@NetBSD.org
HOMEPAGE=	https://github.com/achillean/shodan-python
COMMENT=	Python library and command-line utility for Shodan
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-click-[0-9]*:../../devel/py-click
DEPENDS+=	${PYPKGPREFIX}-click-plugins-[0-9]*:../../devel/py-click-plugins
DEPENDS+=	${PYPKGPREFIX}-colorama-[0-9]*:../../comms/py-colorama
DEPENDS+=	${PYPKGPREFIX}-requests>=2.2.1:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-xlsxwriter-[0-9]*:../../textproc/py-xlsxwriter

# Several dependencies incompatible with Python 2.x
PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES=	# none

post-install:
	${MV} ${DESTDIR}${PREFIX}/bin/shodan ${DESTDIR}${PREFIX}/bin/shodan${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
