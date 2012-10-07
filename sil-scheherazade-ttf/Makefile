# $NetBSD$
#

DISTNAME=	ttf-sil-scheherazade_1.001.orig
PKGNAME=	sil-scheherazade-ttf-1.001
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/t/ttf-sil-scheherazade/}

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://scripts.sil.org/ArabicFonts
COMMENT=	Smart unicode font for arabic
LICENSE=	open-font-license

WRKSRC=		${WRKDIR}/ttf-sil-scheherazade-1.001
USE_LANGUAGES=	# none

NO_BUILD=	yes

INSTALLATION_DIRS=	lib/X11/fonts/TTF  share/doc/sil-scheherazade-ttf

do-install:
	${INSTALL_DATA} ${WRKSRC}/ScheherazadeRegOT.ttf \
			${DESTDIR}${PREFIX}/lib/X11/fonts/TTF
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DESTDIR}${PREFIX}/share/doc/sil-scheherazade-ttf

.include "../../mk/bsd.pkg.mk"
