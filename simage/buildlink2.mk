# $NetBSD$
#
# This Makefile fragment is included by packages that use simage.
#
# This file was created automatically using createbuildlink-3.1.
#

.if !defined(SIMAGE_BUILDLINK2_MK)
SIMAGE_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			simage
BUILDLINK_DEPENDS.simage?=		simage>=1.6.0
BUILDLINK_PKGSRCDIR.simage?=		../../wip/simage

EVAL_PREFIX+=	BUILDLINK_PREFIX.simage=simage
BUILDLINK_PREFIX.simage_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.simage+=	include/simage.h
BUILDLINK_FILES.simage+=	lib/libsimage.*

.include "../../graphics/tiff/buildlink2.mk"
.include "../../graphics/png/buildlink2.mk"
.include "../../graphics/jpeg/buildlink2.mk"
.include "../../graphics/libungif/buildlink2.mk"

BUILDLINK_TARGETS+=	simage-buildlink

simage-buildlink: _BUILDLINK_USE

.endif	# SIMAGE_BUILDLINK2_MK
