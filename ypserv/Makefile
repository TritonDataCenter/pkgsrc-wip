# $NetBSD$
#

DISTNAME=		ypserv-2.9
CATEGORIES=		net
MASTER_SITES=		ftp://ftp.kernel.org/pub/linux/utils/net/NIS/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		reed@reedmedia.net
HOMEPAGE=		http://www.linux-nis.org/nis/ypserv/
COMMENT=		NIS (YP) Server

DEPENDS+=		portmap>=4:../../wip/portmap

USE_BUILDLINK2=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--libexecdir=${PREFIX}/sbin
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

.include "../../databases/gdbm/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
