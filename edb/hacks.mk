# $NetBSD$
#
.if !empty(EDB_HACKS_MK)
EDB_HACKS_MK=	# defined
.  include "../../mk/compiler.mk"

.  if !empty(CC_VERSION:Mgcc-[34]*)
PKG_CFLAGS+=	-fno-strict-aliasing
PKG_HACKS+=	no-strict-aliasing
.  endif
.endif
