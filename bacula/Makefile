# $NetBSD$
#

DISTNAME=		bacula-1.32f
PKGNAME=		${DISTNAME:S/f//}
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bacula/}

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.bacula.org/
COMMENT=		Network Backup Solution

USE_BUILDLINK3=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/etc/bacula

.include "../../devel/readline/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
