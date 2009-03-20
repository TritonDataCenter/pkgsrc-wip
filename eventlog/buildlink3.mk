# $NetBSD$

BUILDLINK_TREE+=	eventlog

.if !defined(EVENTLOG_BUILDLINK3_MK)
EVENTLOG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.eventlog+=	eventlog>=0.2.5
BUILDLINK_PKGSRCDIR.eventlog?=	../../wip/eventlog
.endif # EVENTLOG_BUILDLINK3_MK

BUILDLINK_TREE+=	-eventlog
