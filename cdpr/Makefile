# $NetBSD$
#

DISTNAME=	cdpr-1.0.8
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cdpr/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	adam@monkeybyte.org
HOMEPAGE=	http://www.monkeymental.com/
COMMENT=	Cisco Discovery Protocol Reporter

USE_BUILDLINK3=         yes
ALL_TARGET=		cdpr

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cdpr ${PREFIX}/bin

.include "../../net/libpcap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
