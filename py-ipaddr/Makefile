# $NetBSD$
#

DISTNAME=	ipaddr-2.0.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	net python
MASTER_SITES=	http://ipaddr-py.googlecode.com/files/

MAINTAINER=	mishka@NetBSD.org
HOMEPAGE=	http://ipaddr-py.googlecode.com/
COMMENT=	IPv4/IPv6 address manipulation library
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=		yes
PYTHON_VERSIONS_ACCEPTED= 26 25

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
