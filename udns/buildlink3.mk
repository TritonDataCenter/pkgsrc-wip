# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 23:10:46 jlam Exp $

BUILDLINK_TREE+=	udns

.if !defined(UDNS_BUILDLINK3_MK)
UDNS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.udns+=	udns>=0.0.9
BUILDLINK_ABI_DEPENDS.udns+=	udns>=0.0.9
BUILDLINK_PKGSRCDIR.udns?=	../../wip/udns
.endif # UDNS_BUILDLINK3_MK

BUILDLINK_TREE+=	-udns
