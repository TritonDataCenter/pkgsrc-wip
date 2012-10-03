# $NetBSD$
#

DISTNAME=	libpafe-0.0.8
CATEGORIES=	misc
MASTER_SITES=	http://homepage3.nifty.com/slokar/pasori/

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://homepage3.nifty.com/slokar/pasori/libpafe.html
COMMENT=	Library for SONY PaSoRi card reader
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

.include "../../devel/libusb1/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
