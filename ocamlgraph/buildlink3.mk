# $NetBSD$

BUILDLINK_TREE+=	ocamlgraph

.if !defined(OCAMLGRAPH_BUILDLINK3_MK)
OCAMLGRAPH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocamlgraph+=	ocamlgraph>=1.7
BUILDLINK_ABI_DEPENDS.ocamlgraph?=	ocamlgraph>=1.7
BUILDLINK_PKGSRCDIR.ocamlgraph?=	../../wip/ocamlgraph
.endif # OCAMLGRAPH_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocamlgraph
