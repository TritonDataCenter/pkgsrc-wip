# $NetBSD$
#

BUILDLINK_TREE+=	libmemphis02

.if !defined(LIBMEMPHIS02_BUILDLINK3_MK)
LIBMEMPHIS02_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmemphis02+=	libmemphis02>=0.2.3
BUILDLINK_PKGSRCDIR.libmemphis02?=	../../wip/libmemphis02

.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.endif	# LIBMEMPHIS02_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmemphis02
