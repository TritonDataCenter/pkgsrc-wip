# $NetBSD$
#

DISTNAME=		pytagger-0.4
PKGNAME=		${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=		audio
MASTER_SITES=		http://www.liquidx.net/static/pytagger/

MAINTAINER=		shattered@users.sourceforge.net
HOMEPAGE=		http://www.liquidx.net/pytagger/
COMMENT=		ID3v1 and ID3v2 tag library in Python

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

PYTHON_VERSIONS_ACCEPTED= 23 22

.include "../../lang/python/extension.mk"

.include "../../mk/bsd.pkg.mk"
