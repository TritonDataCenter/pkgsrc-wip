# $NetBSD$
#

DISTNAME=		bluez-libs-2.10
CATEGORIES=		wip net
MASTER_SITES=		http://bluez.sf.net/download/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://bluez.sf.net/download/
COMMENT=		Linux Bluetooth Stack for Linux

USE_BUILDLINK3=		yes
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
LIBTOOL_OVERRIDE=	${WRKSRC}/libtool
PKGCONFIG_OVERRIDE+=	${WRKSRC}/bluez.pc.in
GNU_CONFIGURE=		yes

ONLY_FOR_PLATFORM=Linux-*-*

.include "../../mk/bsd.pkg.mk"
