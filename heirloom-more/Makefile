# $NetBSD$

.include "../../wip/heirloom-dirs/Makefile.prog2.common"

PKGNAME=	heirloom-more-${HEIRLOOM_VER}
CATEGORIES=	textproc

MAKE_FLAGS+=	SUBDIRS="libcommon build more"

.include "../../wip/libuxre/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
