# $NetBSD$

BUILDLINK_TREE+=	bakery

.if !defined(BAKERY_BUILDLINK3_MK)
BAKERY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bakery+=	bakery>=2.6.3
BUILDLINK_PKGSRCDIR.bakery?=	../../wip/bakery

.include "../../x11/gtkmm/buildlink3.mk"
.endif # BAKERY_BUILDLINK3_MK

BUILDLINK_TREE+=	-bakery
