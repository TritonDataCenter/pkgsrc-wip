# $NetBSD$

BUILDLINK_TREE+=	hs-Boolean

.if !defined(HS_BOOLEAN_BUILDLINK3_MK)
HS_BOOLEAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-Boolean+=	hs-Boolean>=0.2
BUILDLINK_PKGSRCDIR.hs-Boolean?=	../../wip/hs-Boolean
.endif	# HS_BOOLEAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-Boolean
