# $NetBSD$

.if !defined(IS_BUILTIN.pflkm)
IS_BUILTIN.pflkm=	no
.  if exists(/usr/include/net/pfvar.h)
IS_BUILTIN.pflkm=	yes
.  endif
.endif  # IS_BUILTIN.pflkm

USE_BUILTIN.pflkm?=	${IS_BUILTIN.pflkm}
