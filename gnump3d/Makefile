# $NetBSD$
#

DISTNAME=		gnump3d-2.7
CATEGORIES=		wip
MASTER_SITES=		http://savannah.gnu.org/download/gnump3d/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://savannah.gnu.org/download/gnump3d/
COMMENT=		The GNU Streaming MP3 / Media Server

USE_PERL5=		YES
USE_GNU_TOOLS+=		make
REPLACE_PERL=   	${WRKSRC}/bin/*
USE_BUILDLINK3=		yes

do-build:

.include "../../mk/bsd.pkg.mk"
