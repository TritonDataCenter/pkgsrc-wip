# $NetBSD$

BUILDLINK_TREE+=	libsocialweb

.if !defined(LIBSOCIALWEB_BUILDLINK3_MK)
LIBSOCIALWEB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsocialweb+=	libsocialweb>=0.25.20
BUILDLINK_ABI_DEPENDS.libsocialweb+=	libsocialweb>=0.25.20
BUILDLINK_PKGSRCDIR.libsocialweb?=	../../wip/libsocialweb

.include "../../textproc/json-glib/buildlink3.mk"
.include "../../www/librest07/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.endif	# LIBSOCIALWEB_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsocialweb
