# $NetBSD$
#

DISTNAME=	Cython-0.12.1
PKGNAME=	cython-0.12.1
CATEGORIES=	lang python
MASTER_SITES=	http://cython.org/release/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://cython.org/
COMMENT=	C-Extensions for Python
LICENSE=	apache-1.1

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG= yes
PY_PATCHPLIST=	yes

PYTHON_VERSIONS_ACCEPTED= 26 25

DOCDIR=	${PREFIX}/share/doc/cython

INSTALLATION_DIRS+=	${DOCDIR}

do-test:
	( cd ${WRKSRC} && ${PYTHONBIN} runtests.py )
 
post-install:
	${INSTALL_DATA} ${WRKSRC}/Doc/*.html ${DESTDIR}${DOCDIR}

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
