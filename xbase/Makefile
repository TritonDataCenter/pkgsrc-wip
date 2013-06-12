# $NetBSD$
#

DISTNAME=		xbase-2.1.1
CATEGORIES=		databases
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xdb/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://linux.techass.com/projects/xdb/
COMMENT=		Xbase (i.e. dBase, FoxPro, etc.) compatible C++ class library

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CFLAGS+=		-DXBASE_DEBUG

.include "../../mk/bsd.pkg.mk"
