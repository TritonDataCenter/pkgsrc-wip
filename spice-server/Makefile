# $NetBSD: Makefile,v 1.8 2023/05/06 19:08:54 ryoon Exp $

DISTNAME=	spice-0.15.2
PKGNAME=	${DISTNAME:S/spice/spice-server/}
CATEGORIES=	sysutils
MASTER_SITES=	https://www.spice-space.org/download/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.spice-space.org/
COMMENT=	Simple Protocol for Independent Computing Environments
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config
USE_LANGUAGES=	c c++11

PKGCONFIG_OVERRIDE+=	spice-server.pc.in

LDFLAGS.SunOS+=	-lnsl -lsocket

PYTHON_FOR_BUILD_ONLY=	tool

.include "../../audio/libopus/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../sysutils/spice-protocol/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
