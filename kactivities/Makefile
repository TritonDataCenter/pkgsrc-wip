# $NetBSD: Makefile,v 1.17 2011/04/20 09:03:18 roy Exp $

DISTNAME=	kactivities-${_KDE_VERSION}
CATEGORIES=	misc
COMMENT=	KDE Activity Manager

.include "../../wip/kde4/Makefile.kde4"

PKGCONFIG_OVERRIDE+=	lib/libkactivities.pc.cmake

.include "../../wip/kde4/kde4.mk"
.include "../../wip/kdelibs4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
