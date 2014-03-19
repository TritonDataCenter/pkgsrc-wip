# $NetBSD$

DISTNAME=	mplh5canvas-0.7
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	graphics python
MASTER_SITES=	https://pypi.python.org/packages/source/m/mplh5canvas/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://code.google.com/p/mplh5canvas/
COMMENT=	Matplotlib backend based on HTML5 Canvas
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGRPEFIX}-websocket>=0.7.9:../../wip/py-websocket

USE_LANGUAGES=	# none

.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
