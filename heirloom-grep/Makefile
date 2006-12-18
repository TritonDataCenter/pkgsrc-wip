# $NetBSD$

NEED_LIBUXRE=   1

.include "../../wip/heirloom-dirs/Makefile.prog2.common"

PKGNAME=	heirloom-grep-${HEIRLOOM_VER}
CATEGORIES=	textproc

MAKE_FLAGS+=	SUBDIRS="libcommon build grep"

DOC_FILES=	NOTES

.include "../../wip/libuxre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
