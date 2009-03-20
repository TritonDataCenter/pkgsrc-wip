# $NetBSD$

BUILDLINK_TREE+=	dmxproto

.if !defined(DMXPROTO_BUILDLINK3_MK)
DMXPROTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dmxproto+=	dmxproto>=2.2.2
BUILDLINK_PKGSRCDIR.dmxproto?=	../../wip/dmxproto

.include "../../x11/xproto/buildlink3.mk"
.endif # DMXPROTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-dmxproto
