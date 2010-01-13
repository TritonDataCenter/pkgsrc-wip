# $NetBSD$

BUILDLINK_TREE+=	ibus-table

.if !defined(IBUS_TABLE_BUILDLINK3_MK)
IBUS_TABLE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ibus-table+=	ibus-table>=1.2.0.20100111
BUILDLINK_PKGSRCDIR.ibus-table?=	../../wip/ibus-table

.endif	# IBUS_TABLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ibus-table
