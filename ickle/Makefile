# $NetBSD: Makefile,v 1.0 2002/12/26 22:54:52 PST sorenj Exp $ 

DISTNAME=	ickle-0.3.2
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ickle/}

MAINTAINER=	packages@netbsd.org
HOMEPAGE=	http://ickle.sourceforge.net/
COMMENT=	Simplistic gtk+ icq client

USE_BUILDLINK2= YES
USE_LIBTOOL=    YES
LIBTOOL_OVERRIDE=       ${WRKSRC}/libtool
GNU_CONFIGURE=  YES

.include "../../chat/libicq2000/buildlink2.mk"
.include "../../x11/gtk--/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
