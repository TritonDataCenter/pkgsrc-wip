# $NetBSD$

BUILDLINK_TREE+=	hs-chalkboard

.if !defined(HS_CHALKBOARD_BUILDLINK3_MK)
HS_CHALKBOARD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-chalkboard+=	hs-chalkboard>=0.2
BUILDLINK_PKGSRCDIR.hs-chalkboard?=	../../wip/hs-chalkboard
.endif	# HS_CHALKBOARD_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-chalkboard
