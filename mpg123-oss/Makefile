# $NetBSD$
#

.include "${.CURDIR}/../../wip/mpg123/Makefile.common"

MPG123_MODULE=	oss
LIBS+=		-lossaudio
CPPFLAGS+=	-DDEVOSSAUDIO="\"${DEVOSSAUDIO}\""
CPPFLAGS+=	-DDEVOSSSOUND="\"${DEVOSSSOUND}\""

.include "../../mk/oss.buildlink3.mk"

.include "../../wip/mpg123/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
