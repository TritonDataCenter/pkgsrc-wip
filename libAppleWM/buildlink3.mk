# $NetBSD$

BUILDLINK_TREE+=	libAppleWM

.if !defined(LIBAPPLEWM_BUILDLINK3_MK)
LIBAPPLEWM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libAppleWM+=	libAppleWM>=1.2.0
BUILDLINK_PKGSRCDIR.libAppleWM?=	../../wip/libAppleWM

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../wip/applewmproto/buildlink3.mk"
.endif # LIBAPPLEWM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libAppleWM
