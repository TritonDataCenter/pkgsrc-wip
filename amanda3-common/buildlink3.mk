# $NetBSD: buildlink3.mk,v 1.12 2009/03/20 19:25:23 joerg Exp $

BUILDLINK_TREE+=	amanda-common

.if !defined(AMANDA_COMMON_BUILDLINK3_MK)
AMANDA_COMMON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.amanda-common+=	amanda-common>=3.1.2
BUILDLINK_ABI_DEPENDS.amanda-common+=	amanda-common>=3.1.2
BUILDLINK_PKGSRCDIR.amanda-common?=	../../wip/amanda3-common
.endif # AMANDA_COMMON_BUILDLINK3_MK

BUILDLINK_TREE+=	-amanda-common
