# $NetBSD$

.include "../../wip/linux-kernel/Makefile.common"

PKGNAME=		linux-kernel-sources-${LINUX_VERSION}
COMMENT=		Linux kernel sources

NO_BUILD=		# defined

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/src/${DISTNAME}
	(cd ${WRKDIR} && ${GTAR} -cf - ${DISTNAME}) | \
		${GTAR} -xf - -C ${PREFIX}/src

.include "../../mk/bsd.pkg.mk"
