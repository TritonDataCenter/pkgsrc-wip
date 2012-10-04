# $NetBSD$
#

DISTNAME=		pbbuttonsd-0.7.2
CATEGORIES=		wip sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pbbuttons/}

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://pbbuttons.berlios.de/
COMMENT=		Daemon to handle laptop specific features

PKG_DESTDIR_SUPPORT=	none

GNU_CONFIGURE=		YES
ONLY_FOR_PLATFORM=	Linux-*-*
USE_TOOLS+=		gmake
USE_LIBTOOL+=		YES

.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
