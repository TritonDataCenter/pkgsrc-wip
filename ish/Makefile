# $NetBSD$
#

DISTNAME=	ish-v${VERSION}
PKGNAME=	ish-${VERSION}
WRKSRC=		${WRKDIR}/ISHELL-v${VERSION}/
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icmpshell/}

MAINTAINER=	pancake@phreaker.net
HOMEPAGE=	http://ish.sourceforge.net/
COMMENT=	Allow remote shell using ICMP

VERSION=	0.2

USE_GMAKE=	yes
USE_BUILDLINK2=	yes

MAKE_ENV+=	LIBS="${LIBS}"
LIBS.SunOS+=	-lsocket

.include "../../mk/bsd.pkg.mk"
