# $NetBSD$

BUILDLINK_TREE+=	alsa-lib

.if !defined(ALSA_LIB_BUILDLINK3_MK)
ALSA_LIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.alsa-lib+=	alsa-lib>=1.0.18
BUILDLINK_PKGSRCDIR.alsa-lib?=	../../wip/alsa-lib
.endif # ALSA_LIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-alsa-lib
