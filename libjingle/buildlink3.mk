# $NetBSD$

BUILDLINK_TREE+=	libjingle

.if !defined(LIBJINGLE_BUILDLINK3_MK)
LIBJINGLE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libjingle+=	libjingle>=0.3.12
BUILDLINK_PKGSRCDIR.libjingle?=	../../wip/libjingle
.endif	# LIBJINGLE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libjingle
