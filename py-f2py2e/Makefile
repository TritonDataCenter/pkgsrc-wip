# $NetBSD$
#

DISTNAME=		F2PY-2-latest
PKGNAME=		${PYPKGPREFIX}-f2py2e-2.37.233
WRKSRC=			${WRKDIR}/F2PY-2.37.233-1545
CATEGORIES=		devel
MASTER_SITES=		http://cens.ioc.ee/projects/f2py2e/2.x/

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://cens.ioc.ee/projects/f2py2e/
COMMENT=		Fortran to Python interface generator

DEPENDS+=		${PYPKGPREFIX}-scipy_distutils-[0-9]*:../../wip/py-scipy_distutils

USE_BUILDLINK3=		yes
PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
