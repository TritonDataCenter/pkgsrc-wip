# $NetBSD$

BUILDLINK_TREE+=        io-range

.if !defined(IORANGE_BUILDLINK3_MK)
IORANGE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.io-range+=	io-range>=20080904
BUILDLINK_ABI_DEPENDS.io-range+=	io-range>=20080904
BUILDLINK_PKGSRCDIR.io-range?=		../../wip/io-range

BUILDLINK_LIBDIRS.io-range+=		lib/io/addons/Range/_build/dll
BUILDLINK_INCDIRS.io-range+=		include/io/Range
.endif # IORANGE_BUILDLINK3_MK

BUILDLINK_TREE+=        -io-range
