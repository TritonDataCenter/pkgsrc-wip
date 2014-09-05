# $NetBSD$

BUILDLINK_TREE+=	happy

.if !defined(HAPPY_BUILDLINK3_MK)
HAPPY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.happy+=	happy>=1.19.4
BUILDLINK_ABI_DEPENDS.happy+=	happy>=1.19.4
BUILDLINK_PKGSRCDIR.happy?=	../../wip/happy

.include "../../devel/hs-mtl/buildlink3.mk"
.endif	# HAPPY_BUILDLINK3_MK

BUILDLINK_TREE+=	-happy
