# $NetBSD$

BUILDLINK_TREE+=	libhidapi

.if !defined(LIBHIDAPI_BUILDLINK3_MK)
LIBHIDAPI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libhidapi+=	libhidapi>=0.7.0
BUILDLINK_PKGSRCDIR.libhidapi?=	../../wip/libhidapi
.endif

BUILDLINK_TREE+=	-libhidapi
