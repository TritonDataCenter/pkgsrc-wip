# $NetBSD$
#

DISTNAME=		libdrm-1.0.5
CATEGORIES=		x11 ## fix this
MASTER_SITES=		http://dri.freedesktop.org/libdrm/

MAINTAINER=		reed@reedmedia.net
HOMEPAGE=		http://dri.freedesktop.org/wiki/DRM
COMMENT=		Userspace interface to kernel DRM services

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE+=	${WRKSRC}/libdrm.pc.in
GNU_CONFIGURE=		yes

.include "../../mk/bsd.pkg.mk"
