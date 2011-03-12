# $NetBSD$

BUILDLINK_TREE+=	libisoburn

.if !defined(LIBISOBURN_BUILDLINK3_MK)
LIBISOBURN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libisoburn+=	libisoburn>=1.0.4.00
BUILDLINK_PKGSRCDIR.libisoburn?=	../../wip/libisoburn

.include "../../wip/libisofs/buildlink3.mk"
.include "../../wip/libburn/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.endif	# LIBISOBURN_BUILDLINK3_MK

BUILDLINK_TREE+=	-libisoburn
