# $NetBSD$

.include "../../wip/heirloom-common/Makefile.prog2.common"

PKGNAME=	heirloom-psrinfo-${HEIRLOOM_VER}
CATEGORIES=	textproc

ONLY_FOR_PLATFORM+=	Linux-*-*

MAKE_FLAGS+=	SUBDIRS="build psrinfo"

.include "../../wip/heirloom-libcommon/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
