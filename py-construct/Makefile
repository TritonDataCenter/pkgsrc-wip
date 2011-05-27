# $NetBSD: Makefile,v 1.14 2011/04/19 15:32:28 roy Exp $
#

DISTNAME=	construct-2.04
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	http://pypi.python.org/packages/source/c/construct/

MAINTAINER=	eric@cirr.com
HOMEPAGE=	http://pypi.python.org/pypi/construct
COMMENT=	Powerful declarative parser for binary data
LICENSE=	public-domain

PYTHON_VERSIONS_ACCEPTED=	27 26 25

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=	yes
USE_LANGUAGES+=	c
PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

# XXX Avoid picking up other compilers when installed

.include "../../mk/compiler.mk"

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
