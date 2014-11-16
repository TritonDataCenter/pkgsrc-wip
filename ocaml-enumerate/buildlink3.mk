# $NetBSD$
BUILDLINK_TREE+=	ocaml-enumerate

.if !defined(OCAML_ENUMERATE_BUILDLINK3_MK)
OCAML_ENUMERATE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-enumerate+=	ocaml-enumerate>=111.08.00
BUILDLINK_PKGSRCDIR.ocaml-enumerate?=	../../wip/ocaml-enumerate

.include "../../devel/ocaml-type_conv/buildlink3.mk"
.endif	# OCAML_ENUMERATE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-enumerate
