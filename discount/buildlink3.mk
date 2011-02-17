# $NetBSD$

BUILDLINK_TREE+=	discount

.if !defined(DISCOUNT_BUILDLINK3_MK)
DISCOUNT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.discount+=	discount>=2.0.1
BUILDLINK_PKGSRCDIR.discount?=		../../wip/discount
.endif	# DISCOUNT_BUILDLINK3_MK

BUILDLINK_TREE+=	-discount
