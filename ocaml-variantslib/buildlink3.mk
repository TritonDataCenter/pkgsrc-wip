# $NetBSD$

BUILDLINK_TREE+=	ocaml-variantslib

.if !defined(OCAML_VARIANTSLIB_BUILDLINK3_MK)
OCAML_VARIANTSLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-variantslib+=	ocaml-variantslib>=109.10.00
BUILDLINK_PKGSRCDIR.ocaml-variantslib?=	../../wip/ocaml-variantslib
.endif	# OCAML_VARIANTSLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-variantslib
