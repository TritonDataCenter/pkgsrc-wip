# $NetBSD$

.if !defined(SIMAGE_BUILDLINK2_MK)
SIMAGE_BUILDLINK2_MK=		#defined

BUILDLINK_PACKAGES+=		simage
BUILDLINK_PKGBASE.simage=	simage
BUILDLINK_DEPENDS.simage?=	simage>=1.6.0
BUILDLINK_PKGSRCDIR.simage?=	../../wip/simage

EVAL_PREFIX+=			BUILDLINK_PREFIX.simage=simage
BUILDLINK_PREFIX.simage_DEFAULT=${LOCALBASE}
BUILDLINK_FILES.simage+=	include/simage.h
BUILDLINK_FILES.simage+=	lib/libsimage.*

BUILDLINK_TARGETS+=		simage-buildlink

simage-buildlink: _BUILDLINK_USE
.endif # SIMAGE_BUILDLINK2_MK
