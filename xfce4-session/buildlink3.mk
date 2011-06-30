# $NetBSD: buildlink3.mk,v 1.26 2011/04/22 13:42:23 obache Exp $

BUILDLINK_TREE+=	xfce4-session

.if !defined(XFCE4_SESSION_BUILDLINK3_MK)
XFCE4_SESSION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-session+=	xfce4-session>=4.8.1
BUILDLINK_ABI_DEPENDS.xfce4-session?=	xfce4-session>=4.8.1
BUILDLINK_PKGSRCDIR.xfce4-session?=	../../wip/xfce4-session

.include "../../devel/glib2/buildlink3.mk"
.include "../../wip/xfconf/buildlink3.mk"
.include "../../wip/libxfce4ui/buildlink3.mk"
.endif # XFCE4_SESSION_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-session
