# $NetBSD$
#
# This Makefile fragment is included by packages that use compositeext.
#
# This file was created automatically using createbuildlink 2.8.
#

.if !defined(COMPOSITEEXT_BUILDLINK2_MK)
COMPOSITEEXT_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			compositeext
BUILDLINK_DEPENDS.compositeext?=		compositeext>=2.0
BUILDLINK_PKGSRCDIR.compositeext?=		../../wip/compositeext

EVAL_PREFIX+=	BUILDLINK_PREFIX.compositeext=compositeext
BUILDLINK_PREFIX.compositeext_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.compositeext+=	include/X11/extensions/composite.h
BUILDLINK_FILES.compositeext+=	include/X11/extensions/compositeproto.h

.include "../../wip/fixesext/buildlink2.mk"

BUILDLINK_TARGETS+=	compositeext-buildlink

compositeext-buildlink: _BUILDLINK_USE

.endif	# COMPOSITEEXT_BUILDLINK2_MK
