# $NetBSD$
#

DISTNAME=	streamripper-1.32
CATEGORIES=	audio
MASTER_SITES=	http://streamripper.sourceforge.net/files/

MAINTAINER=	xtraeme@NetBSD.org
HOMEPAGE=	http://streamripper.sourceforge.net/
COMMENT=	Splits SHOUTcast stream into tracks

USE_BUILDLINK2=		yes
GNU_CONFIGURE=		yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/streamripper ${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
