# $NetBSD$

BUILDLINK_TREE+=	ncbi-lib

BUILDLINK_API_DEPENDS.ncbi-lib+=	ncbi-lib>=20060301
BUILDLINK_PKGSRCDIR.ncbi-lib?=	../../wip/ncbi-lib
.endif # NCBI_LIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ncbi-lib
