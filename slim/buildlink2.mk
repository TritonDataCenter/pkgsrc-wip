# $NetBSD$

.if !defined(SLIM_BUILDLINK2_MK)
SLIM_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			slim
BUILDLINK_DEPENDS.slim?=		slim>=0.2.0
BUILDLINK_PKGSRCDIR.slim?=		../../wip/slim

EVAL_PREFIX+=	BUILDLINK_PREFIX.slim=slim
BUILDLINK_PREFIX.slim_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.slim+=	include/slim_export.h
BUILDLINK_FILES.slim+=	include/slim_import.h
BUILDLINK_FILES.slim+=	include/slim_internal.h

BUILDLINK_TARGETS+=	slim-buildlink

slim-buildlink: _BUILDLINK_USE

.endif	# SLIM_BUILDLINK2_MK
