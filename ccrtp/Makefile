# $NetBSD$
#

DISTNAME=		ccrtp-1.5.1
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_GNU:=ccrtp/}

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://wiki.gnutelephony.org/
COMMENT=		RTP and RTSP protocol implementation using GNU CommonCpp

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_LANGUAGES+=		c c++ fortran
PKGCONFIG_OVERRIDE+=	${WRKSRC}/libccrtp1.pc.in
GNU_CONFIGURE=		yes
CPPFLAGS+=		-I${BUILDLINK_PREFIX.commoncpp2}/include/cc++2

INFO_FILES=		yes

.include "../../wip/commoncpp2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
