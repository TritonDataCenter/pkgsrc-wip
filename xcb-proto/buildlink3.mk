# $NetBSD$

BUILDLINK_TREE+=	xcb-proto

.if !defined(XCB_PROTO_BUILDLINK3_MK)
XCB_PROTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xcb-proto?=	xcb-proto>=1.4
BUILDLINK_PKGSRCDIR.xcb-proto?=	../../wip/xcb-proto
BUILDLINK_DEPMETHOD.xcb-proto?=	build
.endif # XCB_PROTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-xcb-proto
