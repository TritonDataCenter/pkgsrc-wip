# $NetBSD$
#
###########################################################
#                  Generated by fbsd2pkg                  #
#              Fri Oct 13 17:31:07 CDT 2023               #
###########################################################

DISTNAME=	gcta-1.94.1
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_GITHUB:=jianyangqt/}
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_SUBMODULES+=	zhilizheng plink-ng 3744540 plink/submods/plink-ng

OWNER=		bacon@NetBSD.org
HOMEPAGE=	https://cnsgenomics.com/software/gcta/index.html
COMMENT=	Genome-wide Complex Trait Analysis
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=	c c++

CONFIGURE_ENV+=	EIGEN3_INCLUDE_DIR=${PREFIX}/include/eigen3
CONFIGURE_ENV+=	BOOST_INCLUDE_DIR=${PREFIX}/include/boost
CONFIGURE_ENV+=	OPENBLAS=${PREFIX}
CONFIGURE_ENV+=	SPECTRA_INCLUDE_DIR=${PREFIX}/include/Spectra

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${BUILD_WRKSRC}/gcta64 ${DESTDIR}${PREFIX}/bin
	${RLN} ${DESTDIR}${PREFIX}/bin/gcta64 ${DESTDIR}${PREFIX}/bin/gcta

.include "../../devel/cmake/build.mk"
.include "../../mk/blas.buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
# .include "../../wip/spectra/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../archivers/zstd/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
