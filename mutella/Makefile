# $NetBSD$
#

DISTNAME=	mutella-0.4.3
CATEGORIES=	net www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mutella/}

MAINTAINER=	airhead@users.sourceforge.net
HOMEPAGE=	http://mutella.sourceforge.net
COMMENT=	Console mode Gnutella client with optional HTTP interface

GNU_CONFIGURE=		yes
USE_BUILDLINK2=		yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

PTHREAD_OPTS+=		require

.include "../../devel/readline/buildlink2.mk"
.include "../../mk/pthread.buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
