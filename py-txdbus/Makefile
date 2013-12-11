# $NetBSD$

DISTNAME=	txdbus-1.0.8
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	sysutils
MASTER_SITES=	https://pypi.python.org/packages/source/t/txdbus/
FETCH_USING=	curl

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	https://github.com/cocagne/txdbus
COMMENT=	Python implementation of the DBus protocol for the Twisted
LICENSE=	mit

USE_LANGUAGES=	# none

DEPENDS+=       ${PYPKGPREFIX}-twisted>=13.1.0:../../net/py-twisted

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
