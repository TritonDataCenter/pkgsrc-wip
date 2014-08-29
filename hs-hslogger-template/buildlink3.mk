# $NetBSD$

BUILDLINK_TREE+=	hs-hslogger-template

.if !defined(HS_HSLOGGER_TEMPLATE_BUILDLINK3_MK)
HS_HSLOGGER_TEMPLATE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hslogger-template+=	hs-hslogger-template>=1.0.0
BUILDLINK_ABI_DEPENDS.hs-hslogger-template+=	hs-hslogger-template>=1.0.0
BUILDLINK_PKGSRCDIR.hs-hslogger-template?=	../../wip/hs-hslogger-template

.include "../../wip/hs-hslogger/buildlink3.mk"
.include "../../devel/hs-mtl/buildlink3.mk"
.endif	# HS_HSLOGGER_TEMPLATE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hslogger-template
