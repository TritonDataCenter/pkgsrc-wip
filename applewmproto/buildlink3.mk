# $NetBSD$

BUILDLINK_TREE+=	applewmproto

.if !defined(APPLEWMPROTO_BUILDLINK3_MK)
APPLEWMPROTO_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.applewmproto?=	build
BUILDLINK_API_DEPENDS.applewmproto+=	applewmproto>=1.2.0
BUILDLINK_PKGSRCDIR.applewmproto?=	../../wip/applewmproto

.include "../../x11/libX11/buildlink3.mk"
.endif # APPLEWMPROTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-applewmproto
