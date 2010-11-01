# $NetBSD$

BUILDLINK_TREE+=	libnettle

.if !defined(LIBNETTLE_BUILDLINK3_MK)
LIBNETTLE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnettle+=	libnettle>=2.1
BUILDLINK_PKGSRCDIR.libnettle?=	../../wip/libnettle
.endif # LIBNETTLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnettle
