# $NetBSD$

.if !defined(LIBVC_BUILDLINK_MK)
LIBVC_BUILDLINK2_MK=   # defined

BUILDLINK_PACKAGES+=		libvc
BUILDLINK_DEPENDS.libvc?=	libvc>=003
BUILDLINK_PKGSRCDIR.libvc?=	../../wip/libvc

EVAL_PREFIX+=				BUILDLINK_PREFIX.libvc=libvc
BUILDLINK_PREFIX.libvc_DEFAULT=	${LOCALBASE}

BUILDLINK_FILES.libvc=	include/vc.h
BUILDLINK_FILES.libvc+=	lib/libvc.*

BUILDLINK_TARGETS+=             libvc-buildlink

libvc-buildlink: _BUILDLINK_USE

.endif
