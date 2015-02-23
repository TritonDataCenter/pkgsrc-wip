# $NetBSD$

DISTNAME=	txWS-0.9.1
PKGNAME=	${PYPKGPREFIX}-txWS-0.9.1
CATEGORIES=	net python
MASTER_SITES=	https://pypi.python.org/packages/source/t/txWS/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://github.com/MostAwesomeDude/txWS
COMMENT=	Twisted WebSockets wrapper
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-six>=1.9.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted
DEPENDS+=	${PYPKGPREFIX}-vcversioner-[0-9]*:../../wip/py-vcversioner 

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
