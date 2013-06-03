# $NetBSD$
#

DISTNAME=	tcptunnel-0.7
CATEGORIES=	net
MASTER_SITES=	http://www.vakuumverpackt.de/tcptunnel/

MAINTAINER=	pho@cielonegro.org
COMMENT=	Simple TCP port forwarder
LICENSE=	gnu-gpl-v2

do-configure:
	${RUN} cd ${WRKSRC} && \
		${SH} ./configure --prefix=${PREFIX:Q}

.include "../../mk/bsd.pkg.mk"
