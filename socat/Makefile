# $NetBSD$

DISTNAME=	socat-1.3.1.0
WRKSRC=         ${WRKDIR}/socat-1.3
CATEGORIES=	net www
MASTER_SITES=	http://www.dest-unreach.org/socat/download/

MAINTAINER=	adrianp@stindustries.net
HOMEPAGE= 	http://www.dest-unreach.org/socat/
COMMENT=	"netcat++" (extended design, new implementation)

GNU_CONFIGURE=		YES
USE_BUILDLINK2=		YES

CONFIGURE_ARGS+=	--disable-libwrap --disable-readline

.include "../../security/openssl/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
