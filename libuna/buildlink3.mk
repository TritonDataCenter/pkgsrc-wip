# $NetBSD$

BUILDLINK_TREE+=	libuna

.if !defined(LIBUNA_BUILDLINK3_MK)
LIBUNA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libuna+=	libuna>=a20120630
BUILDLINK_PKGSRCDIR.libuna?=	../../wip/libuna

pkgbase := libuna
.include "../../mk/pkg-build-options.mk"


.if !empty(PKG_BUILD_OPTIONS.libuna:Mnls)
.include "../../devel/gettext-lib/buildlink3.mk"
.endif

.endif	# LIBUNA_BUILDLINK3_MK

BUILDLINK_TREE+=	-libuna
