# $NetBSD$

DISTNAME=	raven-4.2.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	https://pypi.python.org/packages/source/r/raven/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://github.com/getsentry/raven-python
COMMENT=	Raven is a client for Sentry
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-django>=1.6.4:../../www/py-django

WRKSRC=		${WRKDIR}/raven-4.2.1

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
