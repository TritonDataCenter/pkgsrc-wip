# $NetBSD: Makefile,v 1.16 2011/01/23 07:55:13 markd Exp $

DISTNAME=	libkdcraw-${_KDE_VERSION}
CATEGORIES=	graphics
COMMENT=	KDE digital camera raw image library wrapper

.include "../../wip/kde4/Makefile.kde4"

PKGCONFIG_OVERRIDE+=    libkdcraw.pc.cmake

.include "../../wip/kde4/kde4.mk"

.include "../../graphics/lcms/buildlink3.mk"
.include "../../wip/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
