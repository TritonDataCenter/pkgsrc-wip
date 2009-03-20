# $NetBSD$

BUILDLINK_TREE+=	io-socket

.if !defined(IOSOCKET_BUILDLINK3_MK)
IOSOCKET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.io-socket+=	io-socket>=20080904
BUILDLINK_ABI_DEPENDS.io-socket+=	io-socket>=20080904
BUILDLINK_PKGSRCDIR.io-socket?=		../../wip/io-socket

BUILDLINK_LIBDIRS.io-socket+=		lib/io/addons/Socket/_build/dll
BUILDLINK_INCDIRS.io-socket+=		include/io/Socket
.endif # IOSOCKET_BUILDLINK3_MK

BUILDLINK_TREE+=	-io-socket
