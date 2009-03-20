# $NetBSD$

BUILDLINK_TREE+=	HsHyperEstraier

.if !defined(HSHYPERESTRAIER_BUILDLINK3_MK)
HSHYPERESTRAIER_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.HsHyperEstraier?=	build
BUILDLINK_API_DEPENDS.HsHyperEstraier+=	HsHyperEstraier>=0.3
BUILDLINK_PKGSRCDIR.HsHyperEstraier?=	../../wip/HsHyperEstraier

.include "../../textproc/hyperestraier/buildlink3.mk"
.include "../../wip/hs-network/buildlink3.mk"
.include "../../wip/hs-utf8-string/buildlink3.mk"
.endif # HSHYPERESTRAIER_BUILDLINK3_MK

BUILDLINK_TREE+=	-HsHyperEstraier
