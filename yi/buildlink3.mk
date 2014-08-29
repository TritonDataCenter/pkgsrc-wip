# $NetBSD$

BUILDLINK_TREE+=	yi

.if !defined(YI_BUILDLINK3_MK)
YI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.yi+=	yi>=0.6
BUILDLINK_PKGSRCDIR.yi?=	../../wip/yi

.include "../../wip/hs-Diff/buildlink3.mk"
.include "../../wip/hs-cautious-file/buildlink3.mk"
.include "../../wip/hs-data-accessor/buildlink3.mk"
.include "../../wip/hs-data-accessor-monads-fd/buildlink3.mk"
.include "../../wip/hs-data-accessor-template/buildlink3.mk"
.include "../../wip/hs-derive/buildlink3.mk"
.include "../../wip/hs-dlist/buildlink3.mk"
.include "../../wip/hs-dyre/buildlink3.mk"
.include "../../wip/hs-fingertree/buildlink3.mk"
.include "../../devel/hs-ghc-paths/buildlink3.mk"
.include "../../wip/hs-hint/buildlink3.mk"
.include "../../wip/hs-monads-fd/buildlink3.mk"
.include "../../wip/hs-pointedlist03/buildlink3.mk"
.include "../../wip/hs-pureMD5/buildlink3.mk"
.include "../../textproc/hs-regex-base/buildlink3.mk"
.include "../../wip/hs-regex-tdfa/buildlink3.mk"
.include "../../wip/hs-rosezipper1/buildlink3.mk"
.include "../../devel/hs-split/buildlink3.mk"
.include "../../devel/hs-uniplate/buildlink3.mk"
.include "../../wip/hs-unix-compat/buildlink3.mk"
.include "../../devel/hs-utf8-string/buildlink3.mk"
.endif	# YI_BUILDLINK3_MK

BUILDLINK_TREE+=	-yi
