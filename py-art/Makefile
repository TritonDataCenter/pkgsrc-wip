# $NetBSD$

DISTNAME=	art-4.8
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	https://files.pythonhosted.org/packages/2d/a3/8c1bda4917bbf5cecefdd36a826707a1f25d5f2eb223e67e84f375b034da/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/sepandhaghighi/art
COMMENT=	ASCII Art Library For Python
LICENSE=	mit

TOOL_DEPENDS+=	${PYPKGPREFIX}-coverage>=4.1:../../devel/py-coverage
TOOL_DEPENDS+=	${PYPKGPREFIX}-codecov>=2.0.15:../../wip/py-codecov
TOOL_DEPENDS+=	${PYPKGPREFIX}-vulture>=1.0:../../devel/py-vulture
TOOL_DEPENDS+=	${PYPKGPREFIX}-bandit>=1.5.1:../../security/py-bandit
TOOL_DEPENDS+=	${PYPKGPREFIX}-docstyle>=3.0.0:../../wip/py-docstyle

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
