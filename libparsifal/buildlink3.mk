# $NetBSD$

BUILDLINK_TREE+=	libparsifal

.if !defined(LIBPARSIFAL_BUILDLINK3_MK)
LIBPARSIFAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libparsifal+=	libparsifal>=0.9.0
BUILDLINK_PKGSRCDIR.libparsifal?=	../../wip/libparsifal
.endif # LIBPARSIFAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libparsifal
