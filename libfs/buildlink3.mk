# $NetBSD: buildlink3.mk,v 1.4 2009/03/20 19:24:29 joerg Exp $

BUILDLINK_TREE+=	libfs

.if !defined(LIBFS_BUILDLINK3_MK)
LIBFS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libfs+=	libfs>=1.0
BUILDLINK_PKGSRCDIR.libfs?=	../../wip/libfs
.endif # LIBFS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libfs
