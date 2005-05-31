# $NetBSD$
#

.include "../../wip/wmii/Makefile.common"

PKGNAME=	${DISTNAME:S/wmii/wmii-cairo/}

COMMENT+=	(built with cairo support)

CONFLICTS=	wmii-[0-9]*

.include "../../graphics/cairo/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
