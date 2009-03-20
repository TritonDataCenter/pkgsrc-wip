# $NetBSD$

BUILDLINK_TREE+=	plplot

.if !defined(PLPLOT_BUILDLINK3_MK)
PLPLOT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.plplot+=	plplot>=5.9.2
BUILDLINK_PKGSRCDIR.plplot?=	../../wip/plplot

.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.endif # PLPLOT_BUILDLINK3_MK

BUILDLINK_TREE+=	-plplot
