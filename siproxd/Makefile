# $NetBSD$

DISTNAME=	siproxd-0.5.11
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=siproxd/}

MAINTAINER=     schwarz@NetBSD.org
HOMEPAGE=	http://siproxd.sourceforge.net/
COMMENT=	a SIP ALG

GNU_CONFIGURE=	YES
USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-libosip-prefix=${BUILDLINK_PREFIX.libosip2}

PLIST_SUBST+=		PKG_SYSCONFDIR=${PKG_SYSCONFDIR:S|^${PREFIX}/||}

INSTALLATION_DIRS=	sbin ${PKG_SYSCONFDIR:S|^${PREFIX}/||}

.include "../../devel/libosip/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
