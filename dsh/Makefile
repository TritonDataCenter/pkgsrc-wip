# $NetBSD$
#

DISTNAME=	dsh-0.25.9
CATEGORIES=	shells
MASTER_SITES=	http://www.netfort.gr.jp/~dancer/software/downloads/

MAINTAINER=	shinden@linux.pl
HOMEPAGE=	http://www.netfort.gr.jp/~dancer/software/downloads/
COMMENT=	Runs command through rsh or ssh on a cluster of machines

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
CONF_FILES=		${PKG_SYSCONFDIR:Q}/dsh.conf

.include "../../wip/libdshconfig/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
