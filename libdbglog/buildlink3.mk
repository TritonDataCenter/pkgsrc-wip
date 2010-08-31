# $NetBSD$

BUILDLINK_TREE+=	libdbglog

.if !defined(LIBDBGLOG_BUILDLINK3_MK)
LIBDBGLOG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdbglog+=	libdbglog>=1.5.1
BUILDLINK_PKGSRCDIR.libdbglog?=	../../wip/libdbglog
.endif	# LIBDBGLOG_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdbglog
