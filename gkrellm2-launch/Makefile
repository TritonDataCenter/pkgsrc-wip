# $NetBSD$
#

DISTNAME=	gkrellmlaunch-0.5
PKGNAME=	${DISTNAME:S/gkrellm/gkrellm-/}
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellmlaunch/}

MAINTAINER=	cube@NetBSD.org
HOMEPAGE=	http://gkrellmlaunch.sourceforge.net/
COMMENT=	GKrellM plugin to allow quick launch of applications

USE_BUILDLINK3=	YES
ALL_TARGET=	gkrellmlaunch.so

do-install:
	${INSTALL_DATA} ${WRKSRC}/gkrellmlaunch.so ${PREFIX}/lib/gkrellm2/plugins

.include "../../wip/gkrellm2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
