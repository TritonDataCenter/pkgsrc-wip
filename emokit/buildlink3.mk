# $NetBSD$

BUILDLINK_TREE+=	emokit

.if !defined(EMOKIT_BUILDLINK3_MK)
EMOKIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.emokit+=	emokit>=0.5
BUILDLINK_PKGSRCDIR.emokit?=	../../wip/emokit
.endif

BUILDLINK_TREE+=	-emokit
