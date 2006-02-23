# $NetBSD$

DISTNAME=	ldp-0.0.1
CATEGORIES=	net
MASTER_SITES=	http://kefren.NetBSD.ro/mpls/

MAINTAINER=	kefren@NetBSD.ro
HOMEPAGE=	http://www.ietf.org/rfc/rfc3036.txt
COMMENT=	Label Distribution Protocol

WRKSRC=		${WRKDIR}/ldp

BUILD_TARGET=	# empty

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ldp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ldp.8 ${PREFIX}/man/man8

.include "../../mk/bsd.pkg.mk"
