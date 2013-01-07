# $NetBSD$

BUILDLINK_TREE+=	crossroads-io

.if !defined(CROSSROADS_IO_BUILDLINK3_MK)
CROSSROADS_IO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.crossroads-io+=	crossroads-io>=1.2.0
BUILDLINK_PKGSRCDIR.crossroads-io?=	../../wip/crossroads-io

.include "../../mk/pthread.buildlink3.mk"
.endif	# CROSSROADS_IO_BUILDLINK3_MK

BUILDLINK_TREE+=	-crossroads-io
