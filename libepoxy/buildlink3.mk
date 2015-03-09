# $NetBSD$

BUILDLINK_TREE+=	libepoxy

.if !defined(LIBEPOXY_BUILDLINK3_MK)
LIBEPOXY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libepoxy+=	libepoxy>=1.2
BUILDLINK_PKGSRCDIR.libepoxy?=	../../wip/libepoxy

.endif	# LIBEPOXY_BUILDLINK3_MK

BUILDLINK_TREE+=	-libepoxy
