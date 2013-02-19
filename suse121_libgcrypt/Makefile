# $NetBSD$

DISTNAME=	suse_libgcrypt-${SUSE_VERSION}
CATEGORIES=	emulators
RPMPKGS+=	libgcrypt11-1.5.0-2.1.2.${SUSE_ARCH}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Linux compatibility package for libgcrypt

EMUL_MODULES.linux=	openssl

.include "../../emulators/suse121_linux/Makefile.common"
.include "../../mk/bsd.pkg.mk"
