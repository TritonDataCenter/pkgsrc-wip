# $NetBSD$

BUILDLINK_TREE+=	protobuf-c

.if !defined(PROTOBUF_C_BUILDLINK3_MK)
PROTOBUF_C_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.protobuf-c+=	protobuf-c>=0.15
BUILDLINK_PKGSRCDIR.protobuf-c?=	../../wip/protobuf-c

.endif	# PROTOBUF_C_BUILDLINK3_MK

BUILDLINK_TREE+=	-protobuf-c
