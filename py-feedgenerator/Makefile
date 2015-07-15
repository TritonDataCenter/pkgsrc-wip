# $NetBSD$

DISTNAME=		feedgenerator-1.7
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		www
MASTER_SITES=		https://pypi.python.org/packages/source/f/feedgenerator/

MAINTAINER=		nils@NetBSD.org
HOMEPAGE=		https://github.com/dmdm/feedgenerator-py3k.git
COMMENT=		Standalone version of django.utils.feedgenerator, compatible with Py3k
LICENSE=		modified-bsd

DEPENDS+=		${PYPKGPREFIX}-six-[0-9]*:../../lang/py-six
DEPENDS+=		${PYPKGPREFIX}-pytz-[0-9]*:../../time/py-pytz

USE_LANGUAGES=	# none

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
