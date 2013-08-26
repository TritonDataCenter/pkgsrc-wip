# $NetBSD$

BUILDLINK_TREE+=	hs-highlighting-kate

.if !defined(HS_HIGHLIGHTING_KATE_BUILDLINK3_MK)
HS_HIGHLIGHTING_KATE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-highlighting-kate+=	hs-highlighting-kate>=0.5.5
BUILDLINK_PKGSRCDIR.hs-highlighting-kate?=	../../wip/hs-highlighting-kate

.endif	# HS_HIGHLIGHTING_KATE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-highlighting-kate
