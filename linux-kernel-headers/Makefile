# $NetBSD$

.include "../../wip/linux-kernel/Makefile.common"

PKGNAME=		linux-kernel-headers-${LINUX_VERSION}
COMMENT=		Linux kernel headers

NO_BUILD=		# defined

do-install:
	(cd ${WRKSRC}/include && ${GTAR} -cf - linux asm*) | \
		${GTAR} -xf - -C ${PREFIX}/include

.include "../../mk/bsd.pkg.mk"
