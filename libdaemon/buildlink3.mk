# $NetBSD$

BUILDLINK_TREE+=	libdaemon

.if !defined(LIBDAEMON_BUILDLINK3_MK)
LIBDAEMON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdaemon+=	libdaemon>=0.10
BUILDLINK_PKGSRCDIR.libdaemon?=		../../wip/libdaemon
.endif # LIBDAEMON_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdaemon
