# $NetBSD$
#

.include "../../wip/lua-lrexlib/Makefile.common"

COMMENT=	Oniguruma regexp library for Lua (lrexlib project)

ENGINE=		onig

DESCR_SRC+=	DESCR

LDFLAGS+=	-lonig

.include "../../textproc/oniguruma/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
