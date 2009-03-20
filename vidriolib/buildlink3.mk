# $NetBSD$

BUILDLINK_TREE+=	vidriolib

.if !defined(VIDRIOLIB_BUILDLINK3_MK)
VIDRIOLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vidriolib+=	vidriolib>=0.1.20070715.0
BUILDLINK_PKGSRCDIR.vidriolib?=	../../wip/vidriolib

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.endif # VIDRIOLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-vidriolib
