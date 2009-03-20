# $NetBSD$

BUILDLINK_TREE+=	libnettle

BUILDLINK_API_DEPENDS.libnettle+=	libnettle>=1.14
BUILDLINK_PKGSRCDIR.libnettle?=	../../wip/libnettle
.endif # LIBNETTLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnettle
