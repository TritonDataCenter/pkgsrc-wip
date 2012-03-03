# $NetBSD$

BUILDLINK_TREE+=	libvisio

.if !defined(LIBVISIO_BUILDLINK3_MK)
LIBVISIO_BUILDLINK3_MK:=
BUILDLINK_API_DEPENDS.libvisio+=	libvisio>=0.0.15
BUILDLINK_PKGSRCDIR.libvisio?=	../../wip/libvisio
.endif

BUILDLINK_TREE+=	-libvisio
