# $NetBSD: Makefile,v 1.3 2012/10/31 21:53:06 othyro Exp $
#

DISTNAME=	tengwar-ttf-20100611
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freetengwar/}
EXTRACT_SUFX=	.zip
DISTFILES=	TengwarFormalCSUR11.zip FreeMonoTengwar.2010-06-11.zip
DISTFILES+=	TengwarTelcontar.008.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://freetengwar.sourceforge.net/
COMMENT=	Family of fonts covering J. R. R. Tolkien's Tengwar script
LICENSE=	gnu-gpl-v3

#TOOL_DEPENDS+=	fontforge-[0-9]*:../../fonts/fontforge

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# none
NO_CONFIGURE=	yes
NO_BUILD=	yes

INSTALLATION_DIRS+=	lib/X11/fonts/TTF

FONTDIR=		${PREFIX}/lib/X11/fonts/TTF
FONTS_DIR.ttf=		${FONTDIR}

TENGWAR_FONTS=		FreeMonoTengwar.2010-06-11/FreeMonoTengwar.ttf
TENGWAR_FONTS+=		TengwarFormalCSUR11/TengwarFormalCSUR.ttf
TENGWAR_FONTS+=		tengtelc.ttf tengtelcb.ttf

do-install:
.for tfont in ${TENGWAR_FONTS}
	${INSTALL_DATA} ${WRKSRC}/${tfont} ${DESTDIR}${FONTS_DIR.ttf}
.endfor

#.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
