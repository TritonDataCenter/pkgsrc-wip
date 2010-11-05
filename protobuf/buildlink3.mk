# $NetBSD$

BUILDLINK_TREE+=	protobuf

.if !defined(PROTOBUF_BUILDLINK3_MK)
PROTOBUF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.protobuf+=	protobuf>=2.3.0
BUILDLINK_PKGSRCDIR.protobuf?=	../../wip/protobuf
.endif	# PROTOBUF_BUILDLINK3_MK

BUILDLINK_TREE+=	-protobuf
