# $NetBSD$

.include "../../wip/heirloom-dirs/Makefile.prog2.common"

PKGNAME=	heirloom-awk-${HEIRLOOM_VER}
CATEGORIES=	textproc lang

MAKE_FLAGS+=	SUBDIRS="libcommon build oawk nawk"

DOC_FILES=	NOTES

.include "../../wip/libuxre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
