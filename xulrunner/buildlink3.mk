# $NetBSD$

BUILDLINK_TREE+=	xulrunner

.if !defined(XULRUNNER_BUILDLINK3_MK)
XULRUNNER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xulrunner+=	xulrunner>=1.9.0.5
BUILDLINK_PKGSRCDIR.xulrunner?=	../../wip/xulrunner

#.include "../../net/libIDL/buildlink3.mk"
#.include "../../x11/gtk2/buildlink3.mk"
#.include "../../x11/libXt/buildlink3.mk"
.endif # XULRUNNER_BUILDLINK3_MK

BUILDLINK_TREE+=	-xulrunner
