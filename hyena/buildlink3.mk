# $NetBSD$

BUILDLINK_TREE+=	hyena

.if !defined(HYENA_BUILDLINK3_MK)
HYENA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hyena+=	hyena>=0.2
BUILDLINK_PKGSRCDIR.hyena?=	../../wip/hyena

.include "../../x11/gtk-sharp/buildlink3.mk"
.endif	# HYENA_BUILDLINK3_MK

BUILDLINK_TREE+=	-hyena
