# $NetBSD$
#

DISTNAME=		eet-0.9.9
CATEGORIES=		wip devel archivers
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=enlightenment/}

MAINTAINER=		Peter.Bex@student.kun.nl
HOMEPAGE=		http://www.enlightenment.org/pages/eet.html
COMMENT=		Library for speedy storage, retrieval, and compression

GNU_CONFIGURE=		YES
USE_BUILDLINK3=		YES
USE_LIBTOOL=		YES

.include "../../devel/libtool/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
