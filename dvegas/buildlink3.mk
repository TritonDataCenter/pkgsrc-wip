# $NetBSD$

BUILDLINK_TREE+=	dvegas

.if !defined(DVEGAS_BUILDLINK3_MK)
DVEGAS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dvegas+=	dvegas>=2.0.1
BUILDLINK_PKGSRCDIR.dvegas?=	../../wip/dvegas

.include "../../math/gsl/buildlink3.mk"
.include "../../net/omniORB/buildlink3.mk"
.endif	# DVEGAS_BUILDLINK3_MK

BUILDLINK_TREE+=	-dvegas
