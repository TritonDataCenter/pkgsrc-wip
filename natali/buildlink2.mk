# $NetBSD$

.if !defined(NATALI_BUILDLINK2_MK)
NATALI_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=		natali
BUILDLINK_DEPENDS.natali?=	natali>=1.25
BUILDLINK_PKGSRCDIR.natali?=	../../net/natali

EVAL_PREFIX+=			BUILDLINK_PREFIX.natali=natali
BUILDLINK_PREFIX.natali_DEFAULT= ${LOCALBASE}
BUILDLINK_FILES.natali=		include/at/appletalk.h
BUILDLINK_FILES.natali+=	include/at/nbp.h
BUILDLINK_FILES.natali+=	include/at/pap.h
BUILDLINK_FILES.natali+=	lib/libnatali.*

BUILDLINK_TARGETS+=		natali-buildlink

natali-buildlink: _BUILDLINK_USE

.endif	# NATALI_BUILDLINK2_MK
