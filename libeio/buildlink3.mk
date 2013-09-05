# $NetBSD$

BUILDLINK_TREE+=	libeio

.if !defined(LIBEIO_BUILDLINK3_MK)
LIBEIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libeio+=	libeio>=1.0pre
BUILDLINK_ABI_DEPENDS.libeio+=	libeio>=1.0pre
BUILDLINK_PKGSRCDIR.libeio?=	../../wip/libeio

BUILDLINK_LIBDIRS.libeio+=	lib/eio
BUILDLINK_RPATHDIRS.libeio+=	lib/eio
BUILDLINK_INCDIRS.libeio+=	include/eio

.endif # LIBEIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-libeio
