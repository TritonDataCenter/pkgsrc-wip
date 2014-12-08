# $NetBSD$
BUILDLINK_TREE+=	ocaml-pa_ounit

.if !defined(OCAML_PA_OUNIT_BUILDLINK3_MK)
OCAML_PA_OUNIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-pa_ounit+=	ocaml-pa_ounit>=111.28.00
BUILDLINK_PKGSRCDIR.ocaml-pa_ounit?=	../../wip/ocaml-pa_ounit
.endif	# OCAML_PA_OUNIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-pa_ounit
