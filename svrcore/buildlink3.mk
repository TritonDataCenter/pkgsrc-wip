# $NetBSD$

BUILDLINK_TREE+=	svrcore

.if !defined(SVRCORE_BUILDLINK3_MK)
SVRCORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.svrcore+=	svrcore>=4.0.4
BUILDLINK_PKGSRCDIR.svrcore?=	../../wip/svrcore

.include "../../devel/nspr/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.endif	# SVRCORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-svrcore
