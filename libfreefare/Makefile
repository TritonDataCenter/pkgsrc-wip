# $NetBSD: Makefile,v 1.3 2021/05/14 14:44:27 nia Exp $

DISTNAME=	libfreefare-0.4.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=nfc-tools/libfreefare/releases/download/${DISTNAME}/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	lefinnois@lefinnois.net
HOMEPAGE=	http://nfc-tools.org/index.php?title=Libfreefare
COMMENT=	Convenient API for MIFARE card manipulations
LICENSE=	gnu-lgpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config autoreconf autoconf aclocal automake
USE_LANGUAGES+=	c c++

PKGCONFIG_OVERRIDE+=	libfreefare.pc.in

pre-configure:
	cd ${WRKSRC} && autoreconf --install

.include "../../wip/libnfc/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
