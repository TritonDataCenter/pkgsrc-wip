# $NetBSD: Makefile,v 1.1 2015/08/19 19:42:29 yhardy Exp $

DISTNAME=	ia-v22.0.0
PKGNAME=	infraarcana-${DISTNAME:S/ia-v//}
CATEGORIES=	games
MASTER_SITES=	https://gitlab.com/martin-tornqvist/ia/-/archive/${DISTNAME:S/ia-//}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://sites.google.com/site/infraarcana/
COMMENT=	Infra Arcana is a Lovecraftian roguelike set in the early 20th century
LICENSE=	cc-by-nc-sa-v3.0-license

WRKSRC=		${WRKDIR}/${DISTNAME}

USE_LANGUAGES=	c c++
USE_GAMESGROUP=	yes

INSTALLATION_DIRS+=	bin

post-build:
	${SED} -e 's,@PREFIX@,${PREFIX},g' < ${FILESDIR}/infraarcana.sh > ${WRKSRC}/infraarcana.sh

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/infraarcana.sh ${DESTDIR}${PREFIX}/bin/infraarcana

.include "../../audio/SDL2_mixer/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../devel/cmake/build.mk"
.include "../../graphics/SDL2_image/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
