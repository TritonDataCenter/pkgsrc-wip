# $NetBSD$

BUILDLINK_TREE+=	wvstreams

.if !defined(WVSTREAMS_BUILDLINK3_MK)
WVSTREAMS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.wvstreams+=	wvstreams>=4.5.1
BUILDLINK_PKGSRCDIR.wvstreams?=	../../wip/wvstreams
.endif # WVSTREAMS_BUILDLINK3_MK

BUILDLINK_TREE+=	-wvstreams
