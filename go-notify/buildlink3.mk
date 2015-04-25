# $NetBSD$

BUILDLINK_TREE+=	go-notify

.if !defined(GO_NOTIFY_BUILDLINK3_MK)
GO_NOTIFY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.go-notify+=	go-notify>=20150316
BUILDLINK_DEPMETHOD.go-notify?=		build
BUILDLINK_PKGSRCDIR.go-notify?=	../../wip/go-notify
.endif	# GO_NOTIFY_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-notify
