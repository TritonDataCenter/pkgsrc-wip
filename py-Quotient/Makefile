# $NetBSD$
#

DISTNAME=		Quotient-0.8.8
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=divmod/}

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.divmod.org/Home/Projects/Quotient/index.html
COMMENT=		E-mail server, messaging server (IM/IRC) and IP telephony

USE_BUILDLINK3=		yes
PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

DEPENDS+=		${PYPKGPREFIX}-Lupy>=0.1.5.5.1:../../textproc/py-Lupy
DEPENDS+=		${PYPKGPREFIX}-twisted>=1.2.0:../../wip/py-twisted
DEPENDS+=		${PYPKGPREFIX}-spambayes>=1.0a7:../../wip/py-spambayes
DEPENDS+=		${PYPKGPREFIX}-bsddb>=0:../../wip/py-bsddb

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
