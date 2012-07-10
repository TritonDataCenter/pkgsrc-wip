# $NetBSD: buildlink3.mk,v 1.23 2009/03/20 19:24:10 joerg Exp $

BUILDLINK_TREE+=	binutils

.if !defined(BINUTILS_BUILDLINK3_MK)
BINUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.binutils+=	binutils>=2.22
BUILDLINK_PKGSRCDIR.binutils?=	../../wip/binutils
BUILDLINK_DEPMETHOD.binutils?=	build
.endif # BINUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-binutils
