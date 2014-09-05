# $NetBSD$

BUILDLINK_TREE+=	hs-HList

.if !defined(HS_HLIST_BUILDLINK3_MK)
HS_HLIST_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-HList+=	hs-HList>=0.3.4
BUILDLINK_ABI_DEPENDS.hs-HList+=	hs-HList>=0.3.4.1
BUILDLINK_PKGSRCDIR.hs-HList?=	../../wip/hs-HList

.include "../../devel/hs-mtl/buildlink3.mk"
.include "../../devel/hs-tagged/buildlink3.mk"
.endif	# HS_HLIST_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-HList
