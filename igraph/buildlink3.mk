# $NetBSD$

BUILDLINK_TREE+=	igraph

.if !defined(IGRAPH_BUILDLINK3_MK)
IGRAPH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.igraph+=	igraph>=0.5.3
BUILDLINK_PKGSRCDIR.igraph?=	../../wip/igraph

.include "../../devel/gmp/buildlink3.mk"
.endif	# IGRAPH_BUILDLINK3_MK

BUILDLINK_TREE+=	-igraph
