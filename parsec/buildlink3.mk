# $NetBSD$

BUILDLINK_TREE+=	parsec

.if !defined(PARSEC_BUILDLINK3_MK)
PARSEC_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.parsec?=	build
BUILDLINK_API_DEPENDS.parsec+=	parsec>=3.0.0
BUILDLINK_PKGSRCDIR.parsec?=	../../wip/parsec

.include "../../wip/hs-mtl/buildlink3.mk"
.endif # PARSEC_BUILDLINK3_MK

BUILDLINK_TREE+=	-parsec
