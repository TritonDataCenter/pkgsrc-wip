# $NetBSD$

BUILDLINK_TREE+=	libunique

.if !defined(LIBUNIQUE_BUILDLINK3_MK)
LIBUNIQUE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libunique+=	libunique>=3.0.2
BUILDLINK_PKGSRCDIR.libunique?=	../../wip/libunique3

.endif	# LIBUNIQUE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libunique
