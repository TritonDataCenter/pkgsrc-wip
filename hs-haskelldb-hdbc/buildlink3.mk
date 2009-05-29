# $NetBSD$

BUILDLINK_TREE+=	hs-haskelldb-hdbc

.if !defined(HS_HASKELLDB_HDBC_BUILDLINK3_MK)
HS_HASKELLDB_HDBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-haskelldb-hdbc+=	hs-haskelldb-hdbc>=0.12
BUILDLINK_PKGSRCDIR.hs-haskelldb-hdbc?=	../../wip/hs-haskelldb-hdbc

.include "../../wip/hs-convertible/buildlink3.mk"
.include "../../wip/hs-haskelldb/buildlink3.mk"
.include "../../wip/hs-HDBC/buildlink3.mk"
.include "../../wip/hs-mtl/buildlink3.mk"
.endif	# HS_HASKELLDB_HDBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-haskelldb-hdbc
