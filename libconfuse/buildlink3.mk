# $NetBSD$

BUILDLINK_TREE+=	libconfuse

.if !defined(LIBCONFUSE_BUILDLINK3_MK)
LIBCONFUSE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libconfuse+=	libconfuse>=2.7
BUILDLINK_PKGSRCDIR.libconfuse?=	../../wip/libconfuse

.endif # LIBCONFUSE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libconfuse
