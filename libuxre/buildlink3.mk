# $NetBSD$

BUILDLINK_TREE+=	libuxre

.if !defined(LIBUXRE_BUILDLINK3_MK)
LIBUXRE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libuxre+=	libuxre>=060122
BUILDLINK_PKGSRCDIR.libuxre?=	../../wip/libuxre
BUILDLINK_INCDIRS.libuxre+=	include/uxre
.endif # LIBUXRE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libuxre
