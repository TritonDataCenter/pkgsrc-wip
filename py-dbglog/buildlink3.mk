# $NetBSD$

BUILDLINK_TREE+=	py26-dbglog

.if !defined(PY26_DBGLOG_BUILDLINK3_MK)
PY26_DBGLOG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py26-dbglog+=	py26-dbglog>=1.5.0
BUILDLINK_PKGSRCDIR.py26-dbglog?=	../../wip/py-dbglog

.include "../../wip/libdbglog/buildlink3.mk"
.endif	# PY26_DBGLOG_BUILDLINK3_MK

BUILDLINK_TREE+=	-py26-dbglog
