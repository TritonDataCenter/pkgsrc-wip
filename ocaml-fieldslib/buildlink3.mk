# $NetBSD$
BUILDLINK_TREE+=	ocaml-fieldslib

.if !defined(OCAML_FIELDSLIB_BUILDLINK3_MK)
OCAML_FIELDSLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-fieldslib+=	ocaml-fieldslib>=109.19.00
BUILDLINK_PKGSRCDIR.ocaml-fieldslib?=	../../wip/ocaml-fieldslib

.include "../../devel/ocaml-type_conv/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../lang/ocaml/buildlink3.mk"
.endif	# OCAML_FIELDSLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-fieldslib
