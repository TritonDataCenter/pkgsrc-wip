# $NetBSD$

.if !defined(LIBIC_BUILDLINK2_MK)
LIBIC_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			libic
BUILDLINK_DEPENDS.libic?=		libic>=0.1.5
BUILDLINK_PKGSRCDIR.libic?=		../../wip/libic

EVAL_PREFIX+=	BUILDLINK_PREFIX.libic=libic
BUILDLINK_PREFIX.libic_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.libic+=	include/ic.h
BUILDLINK_FILES.libic+=	lib/libic.*

.include "../../wip/libpixregion/buildlink2.mk"

BUILDLINK_TARGETS+=	libic-buildlink

libic-buildlink: _BUILDLINK_USE

.endif	# LIBIC_BUILDLINK2_MK
