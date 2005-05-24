# $NetBSD$
#

DISTNAME=		goldwater-1.4.0
CATEGORIES=		sysutils
MASTER_SITES=		http://www.nfluid.com/download/src/
EXTRACT_SUFX=		.tgz

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.nfluid.com/download/src/
COMMENT=		Highly scalable distributed middleware

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake

.include "../../textproc/expat/buildlink3.mk"
.include "../../wip/phlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
