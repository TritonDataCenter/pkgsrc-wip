# $NetBSD$

BUILDLINK_TREE+=	hs-convertible-ascii

.if !defined(HS_CONVERTIBLE_ASCII_BUILDLINK3_MK)
HS_CONVERTIBLE_ASCII_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-convertible-ascii+=	hs-convertible-ascii>=0.1.0
BUILDLINK_ABI_DEPENDS.hs-convertible-ascii+=	hs-convertible-ascii>=0.1.0.1
BUILDLINK_PKGSRCDIR.hs-convertible-ascii?=	../../wip/hs-convertible-ascii

.include "../../wip/hs-ascii/buildlink3.mk"
.include "../../wip/hs-base-unicode-symbols/buildlink3.mk"
.include "../../devel/hs-blaze-builder/buildlink3.mk"
.include "../../wip/hs-convertible-text/buildlink3.mk"
.include "../../wip/hs-failure/buildlink3.mk"
.include "../../devel/hs-text/buildlink3.mk"
.endif	# HS_CONVERTIBLE_ASCII_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-convertible-ascii
