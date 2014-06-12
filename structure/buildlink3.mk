# $NetBSD$

BUILDLINK_TREE+=	structure

.if !defined(STRUCTURE_BUILDLINK3_MK)
STRUCTURE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.structure+=	structure>=2.3.4
BUILDLINK_PKGSRCDIR.structure?=	../../jb-wip/structure
.endif	# STRUCTURE_BUILDLINK3_MK

BUILDLINK_TREE+=	-structure
