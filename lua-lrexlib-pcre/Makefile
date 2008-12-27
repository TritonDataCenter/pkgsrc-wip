# $NetBSD$
#

.include "../../wip/lua-lrexlib/Makefile.common"

COMMENT=	PCRE regexp library for Lua (lrexlib project)

ENGINE=		pcre

DESCR_SRC+=	DESCR

LDFLAGS+=	-lpcre

.include "../../devel/pcre/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
