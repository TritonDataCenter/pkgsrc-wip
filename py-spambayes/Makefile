# $NetBSD$
#

DISTNAME=		spambayes-1.0a7
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		textproc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=spambayes/}

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://spambayes.sourceforge.net/
COMMENT=		Bayesian anti-spam filter, initially based on the work of Paul Graham

USE_BUILDLINK3=		yes
PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
