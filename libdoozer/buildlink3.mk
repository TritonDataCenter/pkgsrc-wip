# $NetBSD$

BUILDLINK_TREE+=	libdoozer

.if !defined(LIBDOOZER_BUILDLINK3_MK)
LIBDOOZER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdoozer+=	libdoozer>=0.1
BUILDLINK_PKGSRCDIR.libdoozer?=	../../wip/libdoozer
.endif	# LIBDOOZER_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdoozer
