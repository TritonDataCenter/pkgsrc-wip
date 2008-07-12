# $NetBSD$
#
.if !defined(RATPROXY_HACKS_MK)
RATPROXY_HACKS_MK=	# defined
#
.  include "../../mk/bsd.fast.prefs.mk"
#
.  if ${OPSYS} == "SunOS"
BUILDLINK_TRANSFORM+=	rm:-Wno-pointer-sign
.  endif
.endif
