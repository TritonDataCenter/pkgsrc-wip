# $NetBSD$

BUILDLINK_TREE+=	hscolour

.if !defined(HSCOLOUR_BUILDLINK3_MK)
HSCOLOUR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hscolour+=	hscolour>=1.11
BUILDLINK_PKGSRCDIR.hscolour?=	../../wip/hscolour
.endif # HSCOLOUR_BUILDLINK3_MK

BUILDLINK_TREE+=	-hscolour
