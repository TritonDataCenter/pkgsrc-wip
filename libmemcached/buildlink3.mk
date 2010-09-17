# $NetBSD$

BUILDLINK_TREE+=	libmemcached

.if !defined(LIBMEMCACHED_BUILDLINK3_MK)
LIBMEMCACHED_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmemcached+=	libmemcached>=0.33
BUILDLINK_PKGSRCDIR.libmemcached?=	../../wip/libmemcached
BUILDLINK_FILES.libmemcached=		include/libmemcached/*.h
BUILDLINK_FILES.libmemcached+=		lib/libmemcached.*

.endif	# LIBMEMCACHED_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmemcached
