# $NetBSD$

DISTNAME=	openlogos-1.0.3
CATEGORIES=	misc
MASTER_SITES=	http://logos-os.dfki.de/release/

MAINTAINER=	schwarz@NetBSD.org
HOMEPAGE=	http://logos-os.dfki.de/
COMMENT=	Openlogos is a language translation system

USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake
USE_LIBTOOL=	YES
GNU_CONFIGURE=	YES
USE_JAVA=	yes
CONFIGURE_ARGS+=	--with-java=${PKG_JAVA_HOME:Q}

.include "../../devel/libltdl/buildlink3.mk"
.include "../../databases/unixodbc/buildlink3.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
