# $NetBSD$
#

DISTNAME=		aget-0.4
CATEGORIES=		net
MASTER_SITES=		http://www.enderunix.org/aget/

MAINTAINER=	 	eeg@e3labs.ath.cx
HOMEPAGE=		http://www.enderunix.org/aget/
COMMENT=	 	Multithreaded HTTP download accelerator

USE_BUILDLINK2=		yes

PTHREAD_OPTS+=          require

.include "../../mk/pthread.buildlink2.mk"

do-install:
	${INSTALL} -c  -o bin -g bin -m 555 ${WRKSRC}/aget ${PREFIX}/bin/aget
.include "../../mk/bsd.pkg.mk"
