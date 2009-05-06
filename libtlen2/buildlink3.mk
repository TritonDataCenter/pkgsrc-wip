# $NetBSD$

BUILDLINK_TREE+=	libtlen2

.if !defined(LIBTLEN2_BUILDLINK3_MK)
LIBTLEN2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libtlen2+=	libtlen2>=20040301
BUILDLINK_PKGSRCDIR.libtlen2?=	../../wip/libtlen2

.include "../../devel/glib2/buildlink3.mk"
.include "../../net/gnet/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif # LIBTLEN2_BUILDLINK3_MK

BUILDLINK_TREE+=	-libtlen2
