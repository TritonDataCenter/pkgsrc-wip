# $NetBSD: $

TR_VERSION=	1.0
DISTNAME=	trayer-${TR_VERSION}
CATEGORIES=	x11
MASTER_SITES=	http://download.berlios.de/fvwm-crystal/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	milos.negovanovic@googlemail.com
HOMEPAGE=	http://fvwm-crystal.org/
COMMENT=	Standalone tray app

USE_TOOLS+=	gmake

.include "../../x11/gtk2/buildlink3.mk"

do-install:
	cp ${WRKSRC}/trayer ${PREFIX}/bin/

.include "../../mk/bsd.pkg.mk"
