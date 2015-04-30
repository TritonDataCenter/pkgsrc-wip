# $NetBSD$

BUILDLINK_TREE+=	jemalloc

.if !defined(JEMALLOC_BUILDLINK3_MK)
JEMALLOC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.jemalloc+=	jemalloc>=3.6.0
BUILDLINK_PKGSRCDIR.jemalloc?=	../../wip/jemalloc
.endif	# JEMALLOC_BUILDLINK3_MK

BUILDLINK_TREE+=	-jemalloc
