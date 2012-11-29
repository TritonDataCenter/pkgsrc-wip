# $NetBSD$
#

DISTNAME=		activation-1.1.1
PKGNAME=		java-gnujaf-1.1.1
CATEGORIES=		textproc
MASTER_SITES=	http://ftp.gnu.org/gnu/classpathx/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://ftp.gnu.org/gnu/classpathx/
COMMENT=		GNU Java Activation Framework

PKG_DESTDIR_SUPPORT=	none

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake
MAKE_JOBS_SAFE=		no

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
