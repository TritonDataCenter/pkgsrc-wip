# $NetBSD$

DISTNAME=	portmidi-2.0.4
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_GITHUB:=PortMidi/}
GITHUB_PROJECT=	portmidi
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/PortMidi/portmidi/
COMMENT=	Cross Plattform MIDI IO
LICENSE=	mit

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	packaging/portmidi.pc.in

.include "../../mk/bsd.prefs.mk"

.include "options.mk"

.include "../../devel/cmake/build.mk"
.include "../../mk/bsd.pkg.mk"
