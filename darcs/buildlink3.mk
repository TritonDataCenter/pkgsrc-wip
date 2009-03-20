# $NetBSD$

BUILDLINK_TREE+=	darcs

.if !defined(DARCS_BUILDLINK3_MK)
DARCS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.darcs+=	darcs>=2.2.0
BUILDLINK_PKGSRCDIR.darcs?=	../../wip/darcs

.include "../../wip/hs-html/buildlink3.mk"
.include "../../wip/hs-mtl/buildlink3.mk"
.include "../../wip/hs-regex-compat/buildlink3.mk"
.include "../../wip/parsec/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.endif # DARCS_BUILDLINK3_MK

BUILDLINK_TREE+=	-darcs
