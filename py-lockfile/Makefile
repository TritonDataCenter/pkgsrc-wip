# $NetBSD$
#

DISTNAME=	lockfile-0.9.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	http://pylockfile.googlecode.com/files/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://pypi.python.org/pypi/lockfile/
COMMENT=	Platform-independent file locking module
LICENSE=	mit

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${PYPKGPREFIX}-sqlite3>=0:../../databases/py-sqlite3

PYDISTUTILSPKG=		yes
USE_LANGUAGES=	# none

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
