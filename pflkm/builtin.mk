# $NetBSD$

.if !defined(IS_BUILTIN.pf-lkm)
IS_BUILTIN.pf-lkm=	no
.  if exists(/usr/include/net/pfvar.h)
IS_BUILTIN.pf-lkm=	yes
.  endif
.endif  # IS_BUILTIN.pf-lkm

USE_BUILTIN.pf-lkm?=	${IS_BUILTIN.pf-lkm}
