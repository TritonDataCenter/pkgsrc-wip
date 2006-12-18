# $NetBSD$

NEED_LIBUXRE=	1

.include "../../wip/heirloom-common/Makefile.prog2.common"

PKGNAME=	heirloom-csplit-${HEIRLOOM_VER}
CATEGORIES=	textproc

MAKE_FLAGS+=	SUBDIRS="libcommon build csplit"

.include "../../wip/libuxre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
