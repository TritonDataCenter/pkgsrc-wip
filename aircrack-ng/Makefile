# $NetBSD$
#

DISTNAME=		aircrack-ng-0.6.1
CATEGORIES=		security
MASTER_SITES=		http://download.aircrack-ng.org/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.aircrack-ng.org/
COMMENT=		Tools for auditing wireless networks

SUBST_CLASSES+=pfx
SUBST_STAGE.pfx=pre-build
SUBST_FILES.pfx=Makefile
SUBST_SED.pfx=-e 's|/usr/local|${PREFIX}|g'

ONLY_FOR_PLATFORM+=	Linux-*-*

.include "../../mk/bsd.pkg.mk"
