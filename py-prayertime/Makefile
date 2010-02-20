# $NetBSD$
#

DISTNAME=	prayertime-2.0.tar
PKGNAME=	${PYPKGPREFIX}-prayertime-2.0
CATEGORIES=	time python
MASTER_SITES=	http://pypi.python.org/packages/source/p/prayertime/
EXTRACT_SUFX=	.gz#md5=f303672a5b8122493e91874aa3f8372e

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://bitbucket.org/xmonader/pyprayertime/
COMMENT=	Prayertime algorithm implementation in python
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/prayertime-2.0
USE_LANGUAGES=	# none

PYDISTUTILSPKG= yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
