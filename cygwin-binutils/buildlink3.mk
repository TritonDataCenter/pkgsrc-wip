# $NetBSD$

BUILDLINK_TREE+=	cygwin-binutils

.if !defined(CYGWIN_BINUTILS_BUILDLINK3_MK)
CYGWIN_BINUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cygwin-binutils+=	cygwin-binutils>=2.18
BUILDLINK_PKGSRCDIR.cygwin-binutils?=	../../wip/cygwin-binutils
.endif # CYGWIN_BINUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-cygwin-binutils
