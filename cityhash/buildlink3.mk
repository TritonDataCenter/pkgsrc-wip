# $NetBSD$

BUILDLINK_TREE+=	cityhash

.if !defined(CITYHASH_BUILDLINK3_MK)
CITYHASH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cityhash+=	cityhash>=1.1.0
BUILDLINK_PKGSRCDIR.cityhash?=	../../wip/cityhash
.endif	# CITYHASH_BUILDLINK3_MK

BUILDLINK_TREE+=	-cityhash
