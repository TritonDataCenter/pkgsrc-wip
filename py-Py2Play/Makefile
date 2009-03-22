# $NetBSD$
#

DISTNAME=	Py2Play-0.1.10
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	http://download.gna.org/slune/

MAINTAINER=	pkgsrc-users@NetBSD.org
# HOMEPAGE=	http://oomadness.tuxfamily.org/en/py2play/index.html
COMMENT=	Network game engine in Python, utilizing P2P model

PKG_DESTDIR_SUPPORT=	user-destdir

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../x11/py-Tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
