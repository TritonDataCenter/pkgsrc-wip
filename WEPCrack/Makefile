# $NetBSD$

DISTNAME=	WEPCrack-0.0.10
WRKSRC=		${WRKDIR}/
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wepcrack/}

MAINTAINER=	pancake@phreaker.net
HOMEPAGE=	http://wepcrack.sourceforge.net/
COMMENT=	Open source tool for breaking 802.11 WEP secret keys

USE_GMAKE=	yes
MAKE_ENV+=	WRKSRC="${WRKSRC}"
USE_PERL5=	yes
REPLACE_PERL=	${WRKSRC}/*.pl

.include	"../../mk/bsd.pkg.mk"
