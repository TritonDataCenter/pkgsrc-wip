# $NetBSD: Makefile,v 1.16 2011/04/22 13:42:24 obache Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../wip/xfce48/Makefile.common"

DISTNAME=	xfce4-quicklauncher-plugin-1.9.4
PKGREVISION=	7
CATEGORIES=	sysutils
MASTER_SITES=	http://archive.xfce.org/src/panel-plugins/xfce4-quicklauncher-plugin/1.9
COMMENT=	Xfce quicklaunch plugin

#XFCE4_PROJECT=  	xfce4-panel
#XFCE4_BRANCH=		4.8

USE_LANGUAGES+=		c c++

.include "../../wip/libxfce4gui/buildlink3.mk"
.include "../../wip/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
