# $NetBSD: buildlink3.mk,v 1.25 2013/11/20 20:04:35 adam Exp $

BUILDLINK_TREE+=	hackrf

.if !defined(HACKRF_BUILDLINK3_MK)
HACKRF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hackrf+=	hackrf>=0.1
BUILDLINK_ABI_DEPENDS.hackrf+=	hackrf>=0.1
BUILDLINK_PKGSRCDIR.hackrf?=		../../wip/hackrf
.endif # HACKRF_BUILDLINK3_MK

BUILDLINK_TREE+=	-hackrf
