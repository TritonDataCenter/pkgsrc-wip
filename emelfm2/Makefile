# $NetBSD$
#

DISTNAME=	emelfm2-0.1.1
CATEGORIES=	sysutils
MASTER_SITES=	http://emelfm2.org/rel/

MAINTAINER=	lems@gmx.net
HOMEPAGE=	http://emelfm2.org/
COMMENT=	Fast two-pane file manager using GTK2

PTHREAD_OPTS+=	require

USE_DIRS+=		xdg-1.1
USE_TOOLS+=		gmake

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
