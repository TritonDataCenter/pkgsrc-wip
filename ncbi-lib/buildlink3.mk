# $NetBSD$

BUILDLINK_TREE+=	ncbi-lib

BUILDLINK_API_DEPENDS.ncbi-lib+=	ncbi-lib>=20060301
BUILDLINK_PKGSRCDIR.ncbi-lib?=	../../wip/ncbi-lib

BUILDLINK_TREE+=	-ncbi-lib
