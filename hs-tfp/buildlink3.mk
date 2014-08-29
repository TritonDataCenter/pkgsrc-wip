# $NetBSD$

BUILDLINK_TREE+=	hs-tfp

.if !defined(HS_TFP_BUILDLINK3_MK)
HS_TFP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-tfp+=	hs-tfp>=0.2
BUILDLINK_ABI_DEPENDS.hs-tfp+=	hs-tfp>=0.2
BUILDLINK_PKGSRCDIR.hs-tfp?=	../../wip/hs-tfp
.endif	# HS_TFP_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-tfp
