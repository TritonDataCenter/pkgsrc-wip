# $NetBSD$

BUILDLINK_TREE+=	dune-common

.if !defined(DUNE_COMMON_BUILDLINK3_MK)
DUNE_COMMON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dune-common+=	dune-common>=2.2.0
BUILDLINK_PKGSRCDIR.dune-common?=	../../wip/dune-common


.endif	# DUNE_COMMON_BUILDLINK3_MK

BUILDLINK_TREE+=	-dune-common
