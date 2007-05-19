# $NetBSD$

NOT_FOR_PLATFORM+=	Interix-*-*

.include "../../wip/heirloom-common/Makefile.prog2.common"

PKGNAME=	heirloom-tar-${HEIRLOOM_VER}
CATEGORIES=	sysutils

DOC_FILES=	NOTES

MAKE_FLAGS+=	SUBDIRS="build tar"

.include "../../wip/heirloom-libcommon/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
