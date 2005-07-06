# $NetBSD$
#

DISTNAME=	streamripper-1.61.9
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=streamripper/}

MAINTAINER=	tech-pkg@NetBSD.org
HOMEPAGE=	http://streamripper.sourceforge.net/
COMMENT=	Splits SHOUTcast stream into tracks

GNU_CONFIGURE=		yes

PTHREAD_OPTS+=	require

.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
