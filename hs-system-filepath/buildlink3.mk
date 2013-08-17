# $NetBSD$

BUILDLINK_TREE+=	hs-system-filepath

.if !defined(HS_SYSTEM_FILEPATH_BUILDLINK3_MK)
HS_SYSTEM_FILEPATH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-system-filepath+=	hs-system-filepath>=0.4.7
BUILDLINK_PKGSRCDIR.hs-system-filepath?=	../../wip/hs-system-filepath

.endif	# HS_SYSTEM_FILEPATH_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-system-filepath
