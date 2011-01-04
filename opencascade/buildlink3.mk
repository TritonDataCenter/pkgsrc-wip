# $NetBSD$

BUILDLINK_TREE+=	opencascade

.if !defined(OPENCASCADE_BUILDLINK3_MK)
OPENCASCADE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.opencascade+=	opencascade>=6.3
BUILDLINK_PKGSRCDIR.opencascade?=	../../wip/opencascade

.if !empty(PKG_OPTIONS:Mx11)
.include "../../graphics/Mesa/buildlink3.mk"
.endif
.endif	# OPENCASCADE_BUILDLINK3_MK

BUILDLINK_TREE+=	-opencascade
