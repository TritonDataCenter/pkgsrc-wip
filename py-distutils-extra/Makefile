# $NetBSD$
#

DISTNAME=	python-distutils-extra-2.15
PKGNAME=	${PYPKGPREFIX}-distutils-extra-2.15
CATEGORIES=	devel python
MASTER_SITES=	http://launchpad.net/python-distutils-extra/trunk/2.15/+download/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://launchpad.net/python-distutils-extra
COMMENT=	Enhancements to the Python build system
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none

do-test:
	 ( cd ${WRKSRC}/test &&  ${PYTHONBIN} auto.py )

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
