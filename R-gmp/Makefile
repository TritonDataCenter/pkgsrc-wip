# $NetBSD$

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	mishka@NetBSD.org
HOMEPAGE=	http://cran.r-project.org/web/packages/gmp/
COMMENT=	Multiple Precision Arithmetic for R

R_PKGNAME=	gmp
R_PKGVER=	0.5-2

LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c c++

BUILDLINK_API_DEPENDS.gmp+=	gmp>=4.2.3

.include "../../math/R/Makefile.extension"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
