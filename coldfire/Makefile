# $NetBSD$
#

DISTNAME=	coldfire-0.3.1
CATEGORIES=	emulators
MASTER_SITES=	http://www.slicer.ca/coldfire/files/

MAINTAINER=	nocker.bk@gmail.com
HOMEPAGE=	http://www.slicer.ca/coldfire/index.php
COMMENT=	Freescale (Motorola) Coldfire Emulator

PKG_DESTDIR_SUPPORT=	none

GNU_CONFIGURE=	yes

pre-configure:
	${WRKDIR}/${DISTNAME}/tracer/./mktracech.sh ${WRKDIR}/${DISTNAME}

.include "../../mk/bsd.pkg.mk"
