# $NetBSD$

BUILDLINK_TREE+=	natali

BUILDLINK_API_DEPENDS.natali+=	natali>=1.25
BUILDLINK_PKGSRCDIR.natali?=	../../wip/natali

.include "../../net/netatalk/buildlink3.mk"
.endif # NATALI_BUILDLINK3_MK

BUILDLINK_TREE+=	-natali
