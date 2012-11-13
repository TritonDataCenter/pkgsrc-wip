# $NetBSD: Makefile,v 1.8 2011/04/22 13:42:13 obache Exp $

.include "../../wip/xfce48/Makefile.common"

SCREENSHOOT_VERSION=	1.8.0

DISTNAME=	xfce4-screenshooter-${SCREENSHOOT_VERSION}
PKGNAME=	xfce4-screenshooter-plugin-${SCREENSHOOT_VERSION}
PKGREVISION=	1
CATEGORIES=	x11
COMMENT=	Xfce screenshot plugin

MASTER_SITES=	http://archive.xfce.org/src/apps/xfce4-screenshooter/1.8/


.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../wip/xfce4-exo/buildlink3.mk"
.include "../../wip/xfce4-panel/buildlink3.mk"
.include "../../wip/libxfce4gui/buildlink3.mk"
.include "../../net/libsoup24/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
