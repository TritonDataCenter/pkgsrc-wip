# $NetBSD$

PKGNAME=	gkrellm-share-2.1.8a
.include "../../sysutils/gkrellm2/Makefile.common"

COMMENT=	gkrellm2 shared files

BUILD_USES_MSGFMT=	YES

WRKSRC=			${WRKDIR}/gkrellm-2.1.8/po

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gkrellm2
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/gkrellm2

.include "../../mk/bsd.pkg.mk"
