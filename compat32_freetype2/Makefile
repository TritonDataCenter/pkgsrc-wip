# $NetBSD: Makefile,v 1.117 2019/04/02 07:17:17 adam Exp $

DISTNAME=	freetype-2.10.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freetype/}
MASTER_SITES+=	https://savannah.gnu.org/releases/freetype/
EXTRACT_SUFX=	.tar.bz2
ABI=		32
PKGNAME=	compat${ABI}_${DISTNAME:S/-/2-/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freetype.org/
COMMENT=	Font rendering engine and library API
LICENSE=	gnu-gpl-v2

USE_LIBTOOL=		yes
USE_TOOLS+=		grep gmake pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_DIRS=		builds/unix
BUILD_DIRS=		.
GNU_CONFIGURE_PREFIX=	${PREFIX}/emul/netbsd32/
CONFIGURE_ARGS+=	--libdir=${PREFIX}/emul/netbsd32/lib/freetype2
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-harfbuzz=no
CONFIGURE_ENV+=		ac_cv_path_GREP=${GREP:Q} ac_cv_path_EGREP=${EGREP:Q}

BUILDLINK_PASSTHRU_DIRS+=	${PREFIX}/emul/netbsd32

# Remove this when all dependent packages have switched to pkg-config
CONFIGURE_ARGS+=	--enable-freetype-config

.if exists(/System/Library/Frameworks/Carbon.framework)
LDFLAGS+=	-framework Carbon
.endif

PKGCONFIG_OVERRIDE=	builds/unix/freetype2.in
SUBST_CLASSES+=		ftc
SUBST_FILES.ftc+=	builds/unix/freetype-config.in
SUBST_SED.ftc+=		-e "s!echo -L\([^ ]*\)!echo ${COMPILER_RPATH_FLAG}\\1 -L\\1!"
SUBST_STAGE.ftc+=	pre-configure
SUBST_MESSAGE.ftc+=	Fixing rpath in freetype-config script.

.include "../../mk/bsd.prefs.mk"
.include "../../mk/compiler.mk"

.include "options.mk"

# source code breaks strict aliasing in gcc>=2.95
.if !empty(CC_VERSION:Mgcc-[3-9]*) || !empty(CC_VERSION:Mgcc-2.95*)
CFLAGS+=	-fno-strict-aliasing
.endif

# tell configure not to use unix-specific version of ftsystem.c on OpenBSD
CONFIGURE_ENV.OpenBSD+=	ac_cv_func_mmap_fixed_mapped=no

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ENV+=		CC_BUILD=${NATIVE_CC:Q}
.endif

post-configure:
	cd ${WRKSRC} && ${LN} -f -s builds/unix/unix.mk config.mk
.if ${OPSYS} == "IRIX"
	${MKDIR} ${WRKSRC}/.libs
.endif

.include "../../archivers/bzip2/buildlink3.mk"
# Avoid creating a fake zlib.pc, because if it does
# we will add a Requires for it to our .pc file
CHECK_BUILTIN.zlib:=yes
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
