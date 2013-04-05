# $NetBSD$

BUILDLINK_TREE+=	hs-timezone-olson

.if !defined(HS_TIMEZONE_OLSON_BUILDLINK3_MK)
HS_TIMEZONE_OLSON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-timezone-olson+=	hs-timezone-olson>=0.1.2
BUILDLINK_PKGSRCDIR.hs-timezone-olson?=	../../wip/hs-timezone-olson

.endif	# HS_TIMEZONE_OLSON_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-timezone-olson
