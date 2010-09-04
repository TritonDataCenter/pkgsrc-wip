# $NetBSD$
#

.include "../../wip/mawk-uxre/Makefile.common"

PKGNAMESUF=	onig

LIBS=		-lonig

DESCR_SRC+=	${.CURDIR}/DESCR.addon

post-wrapper:
	ln -s onigposix.h ${BUILDLINK_DIR}/include/regex.h

.include "../../textproc/oniguruma/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
