# $NetBSD: Makefile,v 1.2 2012/10/07 14:53:44 asau Exp $
#

DISTNAME=	roxterm-2.2.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=roxterm/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://roxterm.sourceforge.net/
COMMENT=	ROXTerm is a terminal emulator
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gsed gmake

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
TOOLS_PLATFORM.gsed=	#empty
.endif

TOOL_DEPENDS+=		docbook-xsl-[0-9]*:../../textproc/docbook-xsl
TOOL_DEPENDS+=		libxslt>=1.0.20:../../textproc/libxslt

CONFIGURE_ENV+=	ac_cv_prog_HAVE_PO4A=no

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/vte/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
