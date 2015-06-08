# $NetBSD: Makefile,v 1.27 2014/10/09 14:05:56 wiz Exp $

DISTNAME=	libcue-1.4.0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libcue/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	ishit@users.sourceforge.net
HOMEPAGE=	http://libcue.sourceforge.net/
COMMENT=	Library to access a cue sheet data
LICENSE=	modified-bsd OR gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE+=	libcue.pc.in
GNU_CONFIGURE=		yes

.include "../../mk/bsd.pkg.mk"
