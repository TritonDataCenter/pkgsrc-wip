# $NetBSD$
#

DISTNAME=		bacula-1.32f
PKGNAME=		${DISTNAME:S/f//}
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.bacula.org/
COMMENT=		Network Backup Solution

USE_BUILDLINK2=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc/bacula

.include "../../mk/pthread.buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
