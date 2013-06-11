# $NetBSD$

BUILDLINK_TREE+=	libcsplit

.if !defined(LIBCSPLIT_BUILDLINK3_MK)
LIBCSPLIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcsplit+=	libcsplit>=20121224
BUILDLINK_PKGSRCDIR.libcsplit?=	../../wip/libcsplit

.include "../../wip/libcerror/buildlink3.mk"
.endif	# LIBCSPLIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcsplit
