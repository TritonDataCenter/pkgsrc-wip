# $NetBSD$

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH}+
MATCHBOX_DESKTOP_BUILDLINK3_MK:=	${MATCHBOX_DESKTOP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	matchbox-desktop
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmatchbox-desktop}
BUILDLINK_PACKAGES+=	matchbox-desktop

.if !empty(MATCHBOX_DESKTOP_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.matchbox-desktop+=	matchbox-desktop>=0.8
BUILDLINK_PKGSRCDIR.matchbox-desktop?=	../../wip/matchbox-desktop
.endif	# MATCHBOX_DESKTOP_BUILDLINK3_MK

.include "../../wip/libmatchbox/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
