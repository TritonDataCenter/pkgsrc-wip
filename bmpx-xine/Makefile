# $NetBSD$
#

.include "../../wip/bmpx/Makefile.common"

PKGNAME=	${DISTNAME:S/-/-xine-/}
PKGREVISION=	1

COMMENT+=	(using xine)

CONFLICTS+=	bmpx-[0-9]*

.include "../../multimedia/xine-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
