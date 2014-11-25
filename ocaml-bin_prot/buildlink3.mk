# $NetBSD$
BUILDLINK_TREE+=	ocaml-bin_prot

.if !defined(OCAML_BIN_PROT_BUILDLINK3_MK)
OCAML_BIN_PROT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-bin_prot+=	ocaml-bin_prot>=112.01.00
BUILDLINK_PKGSRCDIR.ocaml-bin_prot?=	../../wip/ocaml-bin_prot
.endif	# OCAML_BIN_PROT_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-bin_prot
