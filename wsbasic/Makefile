# $NetBSD$

DISTNAME=	wsbasic-1_2_4
PKGNAME=	${DISTNAME:S/_/./}
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wsbasic/}

MAINTAINER=	geert.hendrickx@ua.ac.be
HOMEPAGE=	http://wsbasic.sourceforge.net/
COMMENT=	Simple BASIC interpreter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wsbasic ${PREFIX}/bin/

.include "../../mk/bsd.pkg.mk"
