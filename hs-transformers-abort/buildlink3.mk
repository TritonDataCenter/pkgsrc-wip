# $NetBSD$

BUILDLINK_TREE+=	hs-transformers-abort

.if !defined(HS_TRANSFORMERS_ABORT_BUILDLINK3_MK)
HS_TRANSFORMERS_ABORT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-transformers-abort+=	hs-transformers-abort>=0.4
BUILDLINK_PKGSRCDIR.hs-transformers-abort?=	../../devel/hs-transformers-abort

.include "../../devel/hs-data-default/buildlink3.mk"
.include "../../wip/hs-failure/buildlink3.mk"
.include "../../devel/hs-monad-control/buildlink3.mk"
.include "../../wip/hs-pointed/buildlink3.mk"
.include "../../wip/hs-semigroupoids/buildlink3.mk"
.include "../../devel/hs-transformers/buildlink3.mk"
.include "../../devel/hs-transformers-base/buildlink3.mk"
.endif	# HS_TRANSFORMERS_ABORT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-transformers-abort
