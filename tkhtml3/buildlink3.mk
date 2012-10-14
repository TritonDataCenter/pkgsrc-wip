# $NetBSD$

BUILDLINK_TREE+=	tkhtml3

.if !defined(TKHTML3_BUILDLINK3_MK)
TKHTML3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tkhtml3+=	tkhtml3>=1.0alpha16
BUILDLINK_PKGSRCDIR.tkhtml3?=	../../wip/tkhtml3

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.endif	# TKHTML3_BUILDLINK3_MK

BUILDLINK_TREE+=	-tkhtml3
