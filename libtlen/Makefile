# $NetBSD$
#

DISTNAME=		libtlen-20031128
CATEGORIES=		chat
MASTER_SITES=		http://www.libtlen.eu.org/snapshots/archive/

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.libtlen.eu.org/
COMMENT=		Library to access tlen.pl IM system

USE_BUILDLINK2=		yes
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
LIBTOOL_OVERRIDE=	${WRKSRC}/libtool
GNU_CONFIGURE=		yes

.include "../../textproc/expat/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
