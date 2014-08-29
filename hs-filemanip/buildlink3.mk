# $NetBSD$

BUILDLINK_TREE+=	hs-filemanip

.if !defined(HS_FILEMANIP_BUILDLINK3_MK)
HS_FILEMANIP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-filemanip+=	hs-filemanip>=0.3.5
BUILDLINK_ABI_DEPENDS.hs-filemanip+=	hs-filemanip>=0.3.5.2
BUILDLINK_PKGSRCDIR.hs-filemanip?=	../../wip/hs-filemanip

.include "../../devel/hs-mtl/buildlink3.mk"
.include "../../wip/hs-unix-compat/buildlink3.mk"
.endif	# HS_FILEMANIP_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-filemanip
