# $NetBSD$
#
# This Makefile fragment is included by packages that use QUANTA.
#
# This file was created automatically using createbuildlink-3.1.
#

BUILDLINK_TREE+=	QUANTA

.if !defined(QUANTA_BUILDLINK3_MK)
QUANTA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.QUANTA+=		QUANTA>=0.3
BUILDLINK_PKGSRCDIR.QUANTA?=		../../wip/QUANTA
.endif # QUANTA_BUILDLINK3_MK

BUILDLINK_TREE+=	-QUANTA
