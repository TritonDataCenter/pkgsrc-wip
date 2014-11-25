# $NetBSD$
BUILDLINK_TREE+=	ocaml-herelib

.if !defined(OCAML_HERELIB_BUILDLINK3_MK)
OCAML_HERELIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-herelib+=	ocaml-herelib>=109.35.02
BUILDLINK_PKGSRCDIR.ocaml-herelib?=	../../wip/ocaml-herelib
.endif	# OCAML_HERELIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-herelib
