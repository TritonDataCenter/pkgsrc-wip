# $NetBSD$

BUILDLINK_TREE+=	hs-time

.if !defined(HS_TIME_BUILDLINK3_MK)
HS_TIME_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-time?=	build
BUILDLINK_API_DEPENDS.hs-time+=	hs-time>=1.1.2.2
BUILDLINK_PKGSRCDIR.hs-time?=	../../wip/hs-time
.endif # HS_TIME_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-time
