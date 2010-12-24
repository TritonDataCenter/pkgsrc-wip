# $NetBSD$

DISTNAME=	rssgrab-0.6.4
PKGNAME=	gDesklets-${DISTNAME}
CATEGORIES=	www
MASTER_SITES=	http://www.gdesklets.info/archive/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.gdesklets.info/archive/#R
COMMENT=	RSS/RDF News Feed Grabber

DEPENDS+=	gDesklets-[0-9]*:../../wip/gDesklets

NO_CONFIGURE=	yes
NO_BUILD=	yes

NAME=rssgrab
GDESKLETSDIR=		${LOCALBASE}/share/gdesklets

PYTHON_PATCH_SCRIPTS=	${NAME}/feedparser.py

post-extract:
	${PYTHONBIN} ${WRKSRC}/Install_${NAME}_Sensor.bin --nomsg ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${GDESKLETSDIR}/Displays/${NAME}/gfx
	${INSTALL_DATA_DIR} ${GDESKLETSDIR}/Sensors/${NAME}
	${INSTALL_DATA} ${WRKSRC}/*.display ${GDESKLETSDIR}/Displays/${NAME}
	${INSTALL_DATA} ${WRKSRC}/gfx/*.png \
		${GDESKLETSDIR}/Displays/${NAME}/gfx
	${INSTALL_DATA} ${WRKSRC}/${NAME}/*.py ${GDESKLETSDIR}/Sensors/${NAME}

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
