# $NetBSD$
#

ENGINE=		pcre
ENGINE_DIR=	pcre

.include "../../wip/lua-lrexlib/Makefile.common"

PKGREVISION=	1
COMMENT=	PCRE regexp library for Lua (lrexlib project)
MAINTAINER=	cheusov@tut.by

DESCR_SRC+=	${.CURDIR}/DESCR

LDFLAGS+=	-lpcre

.include "../../lang/lua/module.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
