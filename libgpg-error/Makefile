# $NetBSD$
#

DISTNAME=		libgpg-error-0.6
CATEGORIES=		wip
MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/alpha/libgpg-error/

MAINTAINER=		john@johnrshannon.com
HOMEPAGE=		ftp://ftp.gnupg.org/gcrypt/alpha/libgpg-error/
COMMENT=		A small library with error codes and descriptions shared by most GnuPG related software.

USE_BUILDLINK3=		yes
PKG_INSTALLATION_TYPES= overwrite pkgviews
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
LIBTOOL_OVERRIDE=	${WRKSRC}/libtool
GNU_CONFIGURE=		yes
USE_GNU_TOOLS+=		make

.include "../../mk/bsd.pkg.mk"
