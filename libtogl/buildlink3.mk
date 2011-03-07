# $NetBSD$

BUILDLINK_TREE+=	libtogl

.if !defined(LIBTOGL_BUILDLINK3_MK)
LIBTOGL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libtogl+=	libtogl>=2.0
BUILDLINK_PKGSRCDIR.libtogl?=	../../wip/libtogl

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.endif	# LIBTOGL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libtogl
