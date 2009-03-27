# $NetBSD$

BUILDLINK_TREE+=	libtextcat

.if !defined(LIBTEXTCAT_BUILDLINK3_MK)
LIBTEXTCAT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libtextcat+=	libtextcat>=2.2
BUILDLINK_PKGSRCDIR.libtextcat?=	../../wip/libtextcat
.endif # LIBTEXTCAT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libtextcat
