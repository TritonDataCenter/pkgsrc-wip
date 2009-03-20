# $NetBSD$

BUILDLINK_TREE+=	QuickCheck

.if !defined(QUICKCHECK_BUILDLINK3_MK)
QUICKCHECK_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.QuickCheck?=	build
BUILDLINK_API_DEPENDS.QuickCheck+=	QuickCheck>=2.1.0.1
BUILDLINK_PKGSRCDIR.QuickCheck?=	../../wip/QuickCheck

.include "../../wip/hs-mtl/buildlink3.mk"
.endif # QUICKCHECK_BUILDLINK3_MK

BUILDLINK_TREE+=	-QuickCheck
