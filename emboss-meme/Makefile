# $NetBSD$
#

.include "../emboss-base/Makefile.common"
.include "../emboss/Makefile.common"

DISTNAME=		MEME-2.3.1
PKGNAME=		emboss-meme-2.3.1
PKGREVISION=		1

COMMENT=		Motif detection tool for EMBOSS

DIST_SUBDIR=		emboss/meme-2.3.1-20041107
BUILD_TARGET=		#empty

pre-configure:
	${SED} -e 's|@EMBOSSLIB@|${PREFIX}/lib|' \
	       -e 's|@INCLUDE@|${PREFIX}/include/emboss|' \
		${WRKSRC}/src/Makefile.in > ${WRKSRC}/src/Makefile.in.bak
	${MV} ${WRKSRC}/src/Makefile.in.bak ${WRKSRC}/src/Makefile.in

.include "../../mk/bsd.pkg.mk"
