# $NetBSD: Makefile,v 1.3 2019/02/27 06:23:39 martin Exp $

VERSION=	2.0.20181021	# v2.0 is too old
GITHUB_PROJECT=	arm-trusted-firmware
# GITHUB_TAG=	v${VERSION}	# only for real releases
GITHUB_TAG=	5d8d246fcbd5fb110311224337199442e48cdb43

DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PLATFORM=	sun50i_a64
PKGNAME=	${GITHUB_PROJECT}-${PLATFORM}-crust-${VERSION}
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=crust-firmware/}
EXTRACT_SUFX=	.zip

MAINTAINER=	port-arm@NetBSD.org
HOMEPAGE=	https://github.com/crust-firmware/arm-trusted-firmware/
COMMENT=	ARM Trusted Firmware, patched for crust SCP firmware
LICENSE=	modified-bsd

USE_TOOLS+=	gmake

# We are too space-constrained. -O2 builds will fail, and CFLAGS is -O2 by default.
CFLAGS=		-Os

MAKE_FLAGS+=	CROSS_COMPILE=${PREFIX}/cross-aarch64-none-elf/bin/aarch64-none-elf-
MAKE_FLAGS+=	PLAT=${PLATFORM}
MAKE_FLAGS+=	DEBUG=0
MAKE_FLAGS+=	V=1
MAKE_FLAGS+=	BUILD_STRING=${GITHUB_TAG}
BUILD_TARGET=	bl31

SSP_SUPPORTED=		no
FORTIFY_SUPPORTED=	no

TOOL_DEPENDS+=	cross-aarch64-none-elf-gcc-[0-9]*:../../cross/aarch64-none-elf-gcc

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/arm-trusted-firmware/${PLATFORM}
	${INSTALL_DATA} ${WRKSRC}/build/${PLATFORM}/release/bl31.bin \
	    ${DESTDIR}${PREFIX}/share/arm-trusted-firmware/${PLATFORM}/


# XXX kludge. pkgsrc passes down run path flags in LDFLAGS assuming
# gcc is used for linking, but here we call the linker directly.
COMPILER_RPATH_FLAG=	-R

.include "../../mk/bsd.pkg.mk"
