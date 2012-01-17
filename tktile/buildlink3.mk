# $NetBSD$

BUILDLINK_TREE+=	tktile

.if !defined(TKTILE_BUILDLINK3_MK)
TKTILE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tktile+=	tktile>=0.8.4.0
BUILDLINK_PKGSRCDIR.tktile?=	../../wip/tktile

#.include "../../x11/tk/buildlink3.mk"
.endif	# TKTILE_BUILDLINK3_MK

BUILDLINK_TREE+=	-tktile
