# $NetBSD$
BUILDLINK_TREE+=	ocaml-fieldslib

.if !defined(OCAML_FIELDSLIB_BUILDLINK3_MK)
OCAML_FIELDSLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-fieldslib+=	ocaml-fieldslib>=109.19.00
BUILDLINK_PKGSRCDIR.ocaml-fieldslib?=	../../wip/ocaml-fieldslib
.endif	# OCAML_FIELDSLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-fieldslib
