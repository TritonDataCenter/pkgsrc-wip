# $NetBSD$

BUILDLINK_TREE+=	hs-hslogger

.if !defined(HS_HSLOGGER_BUILDLINK3_MK)
HS_HSLOGGER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hslogger+=	hs-hslogger>=1.1.4
BUILDLINK_ABI_DEPENDS.hs-hslogger+=	hs-hslogger>=1.1.4
BUILDLINK_PKGSRCDIR.hs-hslogger?=	../../wip/hs-hslogger

.include "../../devel/hs-mtl/buildlink3.mk"
.include "../../net/hs-network/buildlink3.mk"
.endif	# HS_HSLOGGER_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hslogger
