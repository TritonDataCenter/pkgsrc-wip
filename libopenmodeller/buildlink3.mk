# $NetBSD$

BUILDLINK_TREE+=	libopenmodeller

.if !defined(LIBOPENMODELLER_BUILDLINK3_MK)
LIBOPENMODELLER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libopenmodeller+=	libopenmodeller>=0.3.3
BUILDLINK_PKGSRCDIR.libopenmodeller?=	../../wip/openmodeller
.endif # LIBOPENMODELLER_BUILDLINK3_MK

BUILDLINK_TREE+=	-libopenmodeller
