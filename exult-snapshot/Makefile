# $NetBSD$

PKGNAME=		${GITHUB_PROJECT}-1.7.0
DISTNAME=		${GITHUB_TAG}
PKGREVISION=		20220615
GITHUB_PROJECT=		exult
CATEGORIES=		games
MASTER_SITES=		${MASTER_SITE_GITHUB:=exult/}
DIST_SUBDIR=		${GITHUB_PROJECT}
GITHUB_TAG=		7031cef87f2bb1195cce766fc0872566f85c49c2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://exult.sourceforge.net/
COMMENT=		Open-source Ultima 7 engine

WRKSRC=			${WRKDIR}/exult-${GITHUB_TAG}

MAKE_JOBS_SAFE=		no

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++14
USE_TOOLS+=		autoconf automake yacc pkg-config
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
# Do we need the tools?
# The latest tool names may conflict with other packages ...
CONFIGURE_ARGS+=	--disable-tools

pre-configure:
	cd ${WRKSRC} && ${SH} ./autogen.sh
USE_TOOLS+=	yacc flex

.include "../../audio/SDL2_mixer/buildlink3.mk"
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/fluidsynth/buildlink3.mk"
.include "../../audio/libsndfile/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
