# $NetBSD$

BUILDLINK_TREE+=	mingw-binutils

.if !defined(MINGW_BINUTILS_BUILDLINK3_MK)
MINGW_BINUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mingw-binutils+=	mingw-binutils>=2.18
BUILDLINK_PKGSRCDIR.mingw-binutils?=	../../wip/mingw-binutils
.endif # MINGW_BINUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-mingw-binutils
