# $NetBSD$
#

DISTNAME=	hydra-3.1
CATEGORIES=	security
MASTER_SITES=	http://www.thc.org/releases/

MAINTAINER=	adrianp@stindustries.net
HOMEPAGE=	http://www.thc.org/
COMMENT=	Login password cracker

GNU_CONFIGURE=	YES
USE_BUILDLINK3=	YES

CONFIGURE_ARGS+=	--prefix=${PREFIX}

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
