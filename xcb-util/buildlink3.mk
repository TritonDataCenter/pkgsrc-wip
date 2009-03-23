# $NetBSD$

BUILDLINK_TREE+=	xcb-util

.if !defined(XCB_UTIL_BUILDLINK3_MK)
XCB_UTIL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xcb-util+=	xcb-util>=0.3.3
BUILDLINK_PKGSRCDIR.xcb-util?=	../../wip/xcb-util

.include "../../wip/libxcb/buildlink3.mk"
.endif # XCB_UTIL_BUILDLINK3_MK

BUILDLINK_TREE+=	-xcb-util
