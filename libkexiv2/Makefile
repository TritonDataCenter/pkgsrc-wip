# $NetBSD: Makefile,v 1.16 2011/01/23 07:55:13 markd Exp $

DISTNAME=	libkexiv2-${_KDE_VERSION}
CATEGORIES=	graphics
COMMENT=	a KDE wrapper around exiv2

.include "../../wip/kde4/Makefile.kde4"

PKGCONFIG_OVERRIDE+=    libkexiv2.pc.cmake

.include "../../wip/kde4/kde4.mk"

.include "../../graphics/exiv2/buildlink3.mk"
.include "../../wip/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
