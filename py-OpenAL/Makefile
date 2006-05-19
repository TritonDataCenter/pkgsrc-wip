# $NetBSD$
#

DISTNAME=		PyOpenAL-0.1.3
PKGNAME=		${PYPKGPREFIX}-${DISTNAME:S/Py//}
CATEGORIES=		audio
MASTER_SITES=		http://download.gna.org/pyopenal/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://home.gna.org/oomadness/en/pyopenal/index.html
COMMENT=		Python bindings for audio/openal; see openal package for details

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../audio/openal/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
