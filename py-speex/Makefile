# $NetBSD$
#

DISTNAME=		pySpeex-0.2
PKGNAME=		${PYPKGPREFIX}-speex-0.2
WRKSRC=			${WRKDIR}/${DISTNAME:S/-0.2//}
CATEGORIES=		audio
MASTER_SITES=		http://www.freenet.org.nz/python/pySpeex/

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.freenet.org.nz/python/pySpeex/
COMMENT=		Speex bindings for Python; see speex package for details

USE_BUILDLINK2=		yes
PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../audio/speex/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
