# $NetBSD$

BUILDLINK_TREE+=	dumb

.if !defined(DUMB_BUILDLINK3_MK)
DUMB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dumb+=	dumb>=0.9.2
BUILDLINK_PKGSRCDIR.dumb?=	../../wip/dumb

.include "../../devel/allegro/buildlink3.mk"
.endif # DUMB_BUILDLINK3_MK

BUILDLINK_TREE+=	-dumb
