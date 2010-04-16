# $NetBSD$
#

DISTNAME=	pylast-0.4.26.tar
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//S/.tar//}
CATEGORIES=	audio python
MASTER_SITES=	http://pypi.python.org/packages/source/p/pylast/
EXTRACT_SUFX=	.gz#md5=b49e6f82bbb94d898a7fda0dfe509e0e

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://code.google.com/p/pylast/
COMMENT=	Python interface to Last.fm
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/pylast-0.4.26
USE_LANGUAGES=	# none

PYDISTUTILSPKG= yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
