# $NetBSD$
#

DISTNAME=		fluidsynth-1.0.4
CATEGORIES=		audio
MASTER_SITES=		http://savannah.nongnu.org/download/fluid/

MAINTAINER=		ben@NetBSD.org
HOMEPAGE=		http://www.fluidsynth.org/
COMMENT=		Software synthesizer based on SoundFont2

PKG_INSTALLATION_TYPES=	overwrite pkgviews

GNU_CONFIGURE=		YES
USE_BUILDLINK3=		YES

CFLAGS+=		-DDEVOSSAUDIO="\"\\\"${DEVOSSAUDIO}\\\"\""
LDFLAGS+=		${LIBOSSAUDIO}

#SUBST_CLASSES+=	scourge
#SUBST_MESSAGE.scourge=	"Replacing prefix."
#SUBST_STAGE.scourge=	post-patch
#SUBST_FILES.scourge=	scourge.sh
#SUBST_SED.scourge=	-e "s,XXXPREFIXXXX,${PREFIX},g"

#.include "../../audio/libsndfile/buildlink3.mk"
#.include "../../devel/SDL/buildlink3.mk"
#.include "../../devel/pkgconfig/buildlink3.mk"
#.include "../../x11/gtk/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../mk/ossaudio.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
