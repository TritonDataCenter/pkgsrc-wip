# $NetBSD$
#

DISTNAME=	wordwarvi-0.24
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wordwarvi/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://wordwarvi.sourceforge.net/
COMMENT=	Side-scrolling shoot 'em up '80s style arcade game

USE_TOOLS+=	gmake pkg-config
MAKE_ENV+=	MANDIR=${PREFIX}/${PKGMANDIR}

.include "../../audio/libvorbis/buildlink3.mk"
.include "../../audio/portaudio-devel/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
