# $NetBSD: Makefile,v 1.85 2020/10/25 12:43:45 nia Exp $

DISTNAME=   libvpx-git
GIT_REPO=   https://github.com/webmproject/libvpx.git
CATEGORIES=	multimedia

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://chromium.googlesource.com/webm/libvpx
COMMENT=	On2 VP8 library from Google
LICENSE=	modified-bsd

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake bash:build perl:build
HAS_CONFIGURE=		yes
CONFIG_SHELL=		${BASH}
CONFIGURE_ARGS+=	--disable-postproc
CONFIGURE_ARGS+=	--enable-pic
CONFIGURE_ARGS+=	--enable-runtime-cpu-detect
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--disable-unit-tests

# Uses -std=c++11
GCC_REQD+=		4.8

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
TOOL_DEPENDS+=		yasm-[0-9]*:../../devel/yasm
.endif

REPLACE_BASH=		configure
REPLACE_BASH+=		build/make/configure.sh
REPLACE_BASH+=		build/make/version.sh
REPLACE_BASH+=		build/make/gen_asm_deps.sh

REPLACE_PERL=		build/make/ads2gas.pl

.if ${OPSYS} == "Darwin"
BUILDLINK_TRANSFORM+=	rm:-Wl,-Bsymbolic
.  if ${MACHINE_ARCH} == "i386"
.    if !empty(OS_VERSION:M1[8-9].*)
CONFIGURE_ARGS+=	--target=x86-darwin17-gcc
.    elif !empty(OS_VERSION:M1[0-7].*)
CONFIGURE_ARGS+=	--target=x86-darwin${OS_VERSION:C/\.[0-9]*//g}-gcc
.    elif !empty(OS_VERSION:M9.*)
CONFIGURE_ARGS+=	--target=x86-darwin9-gcc
.    else
CONFIGURE_ARGS+=	--target=x86-darwin8-gcc
.    endif
.  elif ${MACHINE_ARCH} == "x86_64"
.    if !empty(OS_VERSION:M1[8-9].*) || !empty(OS_VERSION:M2[0-9].*)
CONFIGURE_ARGS+=	--target=x86_64-darwin17-gcc
.    elif !empty(OS_VERSION:M1[0-7].*)
CONFIGURE_ARGS+=	--target=x86_64-darwin${OS_VERSION:C/\.[0-9]*//g}-gcc
.    else
CONFIGURE_ARGS+=	--target=x86_64-darwin9-gcc
.    endif
.  endif
.elif ${OPSYS} == "SunOS" && !empty(PKGSRC_COMPILER:Mgcc*)
.  if ${MACHINE_ARCH} == "x86_64"
CONFIGURE_ARGS+=	--target=x86_64-solaris-gcc
.  elif ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--target=x86-solaris-gcc
# Disable libyuv SSE code, it doesn't compile at present.
CFLAGS+=		-U__SSE2__
.  endif
.endif

.if !empty(PKGSRC_COMPILER:Mclang)
.  if ${OPSYS} == "NetBSD" || ${OPSYS} == "Darwin"
# https://bugzilla.mozilla.org/show_bug.cgi?id=982693
SUBST_CLASSES+=		clang
SUBST_STAGE.clang=	pre-configure
SUBST_FILES.clang=	build/make/Makefile
SUBST_MESSAGE.clang=	Disabling clang integrated assembler
# Test for whether clang supports -fno-integrated-as instead of -no-integrated-as
CLANG_INTEGRATED_AS!=	if ${CCPATH:Utrue} --version -fno-integrated-as > /dev/null 2>&1; then ${ECHO} "-fno-integrated-as"; else ${ECHO} "-no-integrated-as"; fi
SUBST_SED.clang=	-e 's/-DINLINE_ASM/-DINLINE_ASM ${CLANG_INTEGRATED_AS}/'
.  endif
.endif

.if ${OPSYS} == "NetBSD" && ${MACHINE_ARCH} == "mipsel"
CONFIGURE_ARGS+=	--target=mips32-linux-gcc
.endif

.if ${OPSYS} == "NetBSD" && ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=	--target=generic-gnu
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-*-*arm*) || !empty(MACHINE_PLATFORM:MNetBSD-*-*aarch64*)
CONFIGURE_ARGS+=	--disable-runtime-cpu-detect
.endif

BUILDLINK_TRANSFORM.MirBSD+=	rm:-lrt
# Compiler is too old for these newfangled features
CONFIGURE_ENV.MirBSD+=		sse2=no sse3=no ssse3=no sse4_1=no
# runtime_cpu_detect=no
CONFIGURE_ENV.MirBSD+=		RTCD_OPTIONS='--disable-sse2 --disable-sse3 --disable-ssse3 --disable-sse4_1'
CONFIGURE_ARGS.MirBSD+=		--disable-runtime-cpu-detect

# Under Solaris 10 its /usr/xpg4/bin/tr is not sufficient. PR pkg/48508
.if !empty(MACHINE_PLATFORM:MSunOS-5.10*)
TOOL_DEPENDS=		coreutils-[0-9]*:../../sysutils/coreutils
TOOLS_PLATFORM.tr=	${PREFIX}/bin/gtr
.endif

BUILD_TARGET=	# none

post-extract:
	${CP} ${FILESDIR}/strip_fPIC.sh ${WRKSRC}

PKGCONFIG_OVERRIDE+=		vpx.pc
PKGCONFIG_OVERRIDE_STAGE=	post-build

# PR pkg/48508: newer gas from binutils is required to compile ssse3 code.
.if !empty(MACHINE_PLATFORM:MNetBSD-5.*) || \
	!empty(MACHINE_PLATFORM:MSunOS-5.10*) || \
	!empty(MACHINE_PLATFORM:MOpenBSD-5*)
.include "../../devel/binutils/buildlink3.mk"
.include "../../devel/binutils/override-as.mk"
.endif
.include "../../mk/pthread.buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
