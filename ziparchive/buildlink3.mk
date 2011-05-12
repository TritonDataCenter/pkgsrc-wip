# $NetBSD$

BUILDLINK_TREE+=	ziparchive

.if !defined(ZIPARCHIVE_BUILDLINK3_MK)
ZIPARCHIVE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ziparchive+=	ziparchive>=4.1.0
BUILDLINK_PKGSRCDIR.ziparchive?=	../../wip/ziparchive
.endif	# ZIPARCHIVE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ziparchive
