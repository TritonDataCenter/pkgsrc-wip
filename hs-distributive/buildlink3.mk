# $NetBSD$

BUILDLINK_TREE+=	hs-distributive

.if !defined(HS_DISTRIBUTIVE_BUILDLINK3_MK)
HS_DISTRIBUTIVE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-distributive+=	hs-distributive>=0.3.2
BUILDLINK_PKGSRCDIR.hs-distributive?=	../../wip/hs-distributive

.include "../../wip/hs-transformers/buildlink3.mk"
.include "../../wip/hs-transformers-compat/buildlink3.mk"
.endif	# HS_DISTRIBUTIVE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-distributive
