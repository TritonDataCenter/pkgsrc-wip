# $NetBSD$

BUILDLINK_TREE+=	liblingoteach

.if !defined(LIBLINGOTEACH_BUILDLINK3_MK)
LIBLINGOTEACH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.liblingoteach+=	liblingoteach>=0.2.1
BUILDLINK_PKGSRCDIR.liblingoteach?=	../../wip/liblingoteach

.include "../../textproc/libxml2/buildlink3.mk"
.endif # LIBLINGOTEACH_BUILDLINK3_MK

BUILDLINK_TREE+=	-liblingoteach
