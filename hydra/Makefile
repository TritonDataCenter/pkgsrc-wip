# $NetBSD$
#

DISTNAME=	hydra-2.6
CATEGORIES=	security
MASTER_SITES=	http://www.thc.org/releases/

MAINTAINER=	adam@monkeybyte.org
HOMEPAGE=	http://www.thc.org/
COMMENT=	Login password cracker

GNU_CONFIGURE=	YES
USE_BUILDLINK2=	YES

CONFIGURE_ARGS+=	--prefix=${PREFIX}

post-extract:
	@${CHMOD} 0755 ${WRKSRC}

.include "../../security/openssl/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
