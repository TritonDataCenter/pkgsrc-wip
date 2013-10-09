# $NetBSD$

BUILDLINK_TREE+=	hs-time-http

.if !defined(HS_TIME_HTTP_BUILDLINK3_MK)
HS_TIME_HTTP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-time-http+=	hs-time-http>=0.1.0
BUILDLINK_PKGSRCDIR.hs-time-http?=	../../wip/hs-time-http

.include "../../wip/hs-parsec/buildlink3.mk"
.endif	# HS_TIME_HTTP_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-time-http
