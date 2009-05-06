# $NetBSD$

BUILDLINK_TREE+=	libcmt

.if !defined(LIBCMT_BUILDLINK3_MK)
LIBCMT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcmt+=	libcmt>=0.1.0
BUILDLINK_PKGSRCDIR.libcmt?=	../../wip/libcmt

.include "../../devel/glib2/buildlink3.mk"
.endif	# LIBCMT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcmt
