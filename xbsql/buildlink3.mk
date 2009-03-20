# $NetBSD$

BUILDLINK_TREE+=	xbsql

BUILDLINK_API_DEPENDS.xbsql+=	xbsql>=0.11
BUILDLINK_PKGSRCDIR.xbsql?=	../../wip/xbsql

.include "../../wip/xbase/buildlink3.mk"
.endif # XBSQL_BUILDLINK3_MK

BUILDLINK_TREE+=	-xbsql
