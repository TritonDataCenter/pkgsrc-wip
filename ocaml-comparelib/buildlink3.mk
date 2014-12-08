# $NetBSD$
BUILDLINK_TREE+=	ocaml-comparelib

.if !defined(OCAML_COMPARELIB_BUILDLINK3_MK)
OCAML_COMPARELIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-comparelib+=	ocaml-comparelib>=109.60.00
BUILDLINK_PKGSRCDIR.ocaml-comparelib?=	../../wip/ocaml-comparelib
.endif	# OCAML_COMPARELIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-comparelib
