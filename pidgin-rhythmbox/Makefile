# $NetBSD: Makefile,v 1.9 2013/01/16 04:58:14 noud4 Exp $
#

DISTNAME=	pidgin-rhythmbox-2.0
PKGREVISION=	4
CATEGORIES=	chat
MASTER_SITES=	http://jon.oberheide.org/projects/pidgin-rhythmbox/downloads/

MAINTAINER=	pkgsrc.gnome@gmail.com
HOMEPAGE=	http://jon.oberheide.org/projects/pidgin-rhythmbox/
COMMENT=	Plugin for pidgin to support Rhythmbox

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

TOOL_DEPENDS+=	rhythmbox>=0.11.6:../../audio/rhythmbox

INSTALLATION_DIRS=	share/pidgin-rhythmbox

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/pidgin-rhythmbox
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${DESTDIR}${PREFIX}/share/pidgin-rhythmbox
	${INSTALL_DATA} ${WRKSRC}/NEWS ${DESTDIR}${PREFIX}/share/pidgin-rhythmbox
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/pidgin-rhythmbox

.include "../../chat/pidgin/buildlink3.mk"
.include "../../devel/libidn/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
