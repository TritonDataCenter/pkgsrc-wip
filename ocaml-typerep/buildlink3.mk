# $NetBSD$
BUILDLINK_TREE+=	ocaml-typerep

.if !defined(OCAML_TYPEREP_BUILDLINK3_MK)
OCAML_TYPEREP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-typerep+=	ocaml-typerep>=111.17.00
BUILDLINK_PKGSRCDIR.ocaml-typerep?=	../../wip/ocaml-typerep
.endif	# OCAML_TYPEREP_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-typerep
