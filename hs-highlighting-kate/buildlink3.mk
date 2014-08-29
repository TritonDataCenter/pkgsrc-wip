# $NetBSD$

BUILDLINK_TREE+=	hs-highlighting-kate

.if !defined(HS_HIGHLIGHTING_KATE_BUILDLINK3_MK)
HS_HIGHLIGHTING_KATE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-highlighting-kate+=	hs-highlighting-kate>=0.5.6
BUILDLINK_PKGSRCDIR.hs-highlighting-kate?=	../../wip/hs-highlighting-kate

.include "../../textproc/hs-blaze-html/buildlink3.mk"
.include "../../devel/hs-mtl/buildlink3.mk"
.include "../../textproc/hs-parsec/buildlink3.mk"
.include "../../wip/hs-pcre-light/buildlink3.mk"
.endif	# HS_HIGHLIGHTING_KATE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-highlighting-kate
