# $NetBSD$

# XXX This version was based on number of cvs revisions.
DISTNAME=		rcorder-0.11
CATEGORIES=		sysutils
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		reed@reedmedia.net
COMMENT=		Print a dependency ordering of interdependent files

# NetBSD since 1.5.2? has this included in base install.
NOT_FOR_PLATFORM=	NetBSD-*-*

NO_CHECKSUM=		# defined

USE_BUILDLINK3=		yes

do-extract:
	@${CP} -Rp ${FILESDIR} ${WRKSRC}

.include "../../pkgtools/libnbcompat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
