# $NetBSD$
.include "../../wip/gkrellm2/Makefile.common"

GKRELLM_PKGBASE=	gkrellm-share
WRKSRC=			${GKRELLM_SRCDIR}/po

COMMENT=		gkrellm2 locale files
CONFLICTS=		gkrellm-1*

BUILD_USES_MSGFMT=	YES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gkrellm2
	${INSTALL_DATA} ${GKRELLM_SRCDIR}/README ${GKRELLM_SRCDIR}/COPYRIGHT ${PREFIX}/share/gkrellm2

.include "../../mk/bsd.pkg.mk"
