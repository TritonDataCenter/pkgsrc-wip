# $NetBSD$

.if !defined(GKRELLM_BUILDLINK2_MK)
GKRELLM_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			gkrellm
BUILDLINK_DEPENDS.gkrellm?=		gkrellm>=2.1.8a
BUILDLINK_PKGSRCDIR.gkrellm?=		../../wip/gkrellm2

EVAL_PREFIX+=	BUILDLINK_PREFIX.gkrellm=gkrellm
BUILDLINK_PREFIX.gkrellm_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.gkrellm+=	include/gkrellm2/gkrellm.h
BUILDLINK_FILES.gkrellm+=	include/gkrellm2/gkrellm-public-proto.h

.include "../../x11/gtk2/buildlink2.mk"

BUILDLINK_TARGETS+=	gkrellm-buildlink

gkrellm-buildlink: _BUILDLINK_USE

.endif	# GKRELLM2_BUILDLINK2_MK
